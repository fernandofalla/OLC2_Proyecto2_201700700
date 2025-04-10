"use client";
import { Editor } from "@monaco-editor/react";
import { useState } from "react";
import Swal from "sweetalert2";

export default function Home() {
  // Estado para almacenar el código del editor y la respuesta de la API

  interface ErrorCompiler {
    type: string;
    message: string;
    line: number;
    column: number;
  }

  interface SimboloCompiler {
    name: string;
    type: string;
    value: string;
    line: number;
    column: number;
  }

  const [code, setCode] = useState("");
  const [response, setResponse] = useState("");
  const [errors, setErrors] = useState<ErrorCompiler[]>([]);

  const handleFileUpload = (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0];
    if (!file) return;

    const reader = new FileReader();
    reader.onload = (e) => {
      const text = e.target?.result;
      if (typeof text === "string") {
        setCode(text);
      }
    };
    reader.readAsText(file);
  };

  // Función para hacer la llamada a la API
  const SendData = async () => {
    try {
      setResponse("");
      const res = await fetch("http://127.0.0.1:5201/compile/run", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ code }),
      });

      const data = await res.json();

      if (!res.ok) {
        throw new Error(data.error || "Error en la solicitud");
      }

      setResponse(data.result);
    } catch (error) {
      setResponse(error instanceof Error ? error.message : "Error desconocido");
    }
  };

  const GetError = async () => {
    try {
      setErrors([]);
      const res = await fetch("http://127.0.0.1:5201/compile/error");
      const result = await res.json();
      if (result.message) {
        Swal.fire({
          title: result.message,
        });
      } else {
        setErrors(result);
        showErrors(result);
      }
    } catch (error) {
      Swal.fire("Error", "No se pudieron obtener los datos", "error");
    }
  };

  const GetSimbolo = async () => {
    try {
      setErrors([]);
      const res = await fetch("http://127.0.0.1:5201/compile/symbols");
      const result = await res.json();
      if (result.message) {
        Swal.fire({
          title: result.message,
        });
      } else {
        setErrors(result);
        showSimbolos(result);
      }
    } catch (error) {
      Swal.fire("Error", "No se pudieron obtener los datos", "error");
    }
  };

  const GetAst = async () => {
    try {
      setResponse("");
      const res = await fetch("http://127.0.0.1:5201/compile/ast", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ code }),
      });
      
      const svgText = await res.text(); 
      
      Swal.fire({
        title: "AST",
        html: `<div style="max-height: 500px; overflow: auto;">${svgText}</div>`,
        width: "80%",
        confirmButtonText: "Cerrar",
      });
      
    } catch (error) {
      Swal.fire("Error", "No se pudo obtener el AST", "error");
    }
  };

  const showSimbolos = (simbolos: SimboloCompiler[]) => {
    if (!simbolos || simbolos.length === 0) {
      Swal.fire("Sin simbolos", "No hay simbolos registrados", "info");
      return;
    }

    let simbolosHtml = `
    <div style="max-height: 300px; overflow-y: auto;">
      <table style="width:100%; border-collapse: collapse;">
        <thead>
          <tr style="background-color: #f8d7da;">
            <th style="border: 1px solid black; padding: 5px;">Tipo</th>
            <th style="border: 1px solid black; padding: 5px;">Nombre</th>
            <th style="border: 1px solid black; padding: 5px;">Valor</th>
            <th style="border: 1px solid black; padding: 5px;">Fila</th>
            <th style="border: 1px solid black; padding: 5px;">Columna</th>
          </tr>
        </thead>
        <tbody>
          ${simbolos
            .map(
              (simbolo) => `
            <tr>
              <td style="border: 1px solid black; padding: 5px;">${
                simbolo.type || "Desconocido"
              }</td>
              <td style="border: 1px solid black; padding: 5px;">${
                simbolo.name || "Sin nombre"
              }</td>
              <td style="border: 1px solid black; padding: 5px;">${
                simbolo.value || "Sin valor"
              }</td>
              <td style="border: 1px solid black; padding: 5px;">${
                simbolo.line || "-"
              }</td>
              <td style="border: 1px solid black; padding: 5px;">${
                simbolo.column || "-"
              }</td>
            </tr>
          `
            )
            .join("")}
        </tbody>
      </table>
    </div>`;
    Swal.fire({
      title: "Reporte de Simbolos",
      html: simbolosHtml,
      confirmButtonText: "Cerrar",
      width: "80%",
    });
  };

  const showErrors = (errors: ErrorCompiler[]) => {
    if (!errors || errors.length === 0) {
      Swal.fire("Sin errores", "No hay errores registrados", "info");
      return;
    }

    let errorsHtml = `    
    <div style="max-height: 300px; overflow-y: auto;">
      <table style="width:100%; border-collapse: collapse;">
        <thead>
          <tr style="background-color: #f8d7da;">
            <th style="border: 1px solid black; padding: 5px;">Tipo</th>
            <th style="border: 1px solid black; padding: 5px;">Mensaje</th>
            <th style="border: 1px solid black; padding: 5px;">Fila</th>
            <th style="border: 1px solid black; padding: 5px;">Columna</th>
          </tr>
        </thead>
        <tbody>
          ${errors
            .map(
              (err) => `
            <tr>
              <td style="border: 1px solid black; padding: 5px;">${
                err.type || "Desconocido"
              }</td>
              <td style="border: 1px solid black; padding: 5px;">${
                err.message || "Sin mensaje"
              }</td>
              <td style="border: 1px solid black; padding: 5px;">${
                err.line || "-"
              }</td>
              <td style="border: 1px solid black; padding: 5px;">${
                err.column || "-"
              }</td>
            </tr>
          `
            )
            .join("")}
        </tbody>
      </table>
    </div>`;

    Swal.fire({
      title: "Reporte de Errores",
      html: errorsHtml,
      confirmButtonText: "Cerrar",
      width: "80%",
    });
  };

  return (
    <div>
      <div
        style={{
          display: "flex",
          height: "90vh",
          padding: "30px",
        }}
      >
        <div style={{ width: "50%", padding: "0 10px" }}>
          <h1 style={{ fontFamily: "'Courier New', monospace" }}>Editor</h1>
          <Editor
            height="90%"
            value={code}
            onChange={(value: any) => setCode(value || "")}
            theme="vs-dark"
            options={{ minimap: { enabled: false }, fontSize: 20 }}
          />
        </div>

        <div style={{ width: "50%", padding: "0 10px" }}>
          <h1 style={{ fontFamily: "'Courier New', monospace" }}>Consola</h1>
          <textarea
            style={{
              width: "100%",
              height: "90%",
              backgroundColor: "#1e1e1e",
              fontSize: "20px",
              padding: "25px",
              resize: "none",
              border: "none",
              outline: "none",
              color: "#fff",
              fontFamily: "'Courier New', monospace",
              lineHeight: "1.5",
              letterSpacing: "0.5px",
              textShadow: "1px 1px 3px rgba(255, 255, 255, 0.3)",
              borderRadius: "8px",
              boxShadow: "0px 4px 8px rgba(255, 255, 255, 0.1)",
            }}
            value={response}
            readOnly
          ></textarea>
        </div>
      </div>

      <input
        type="file"
        accept=".txt,.js,.py,.java,.cpp,.glt"
        onChange={handleFileUpload}
        style={{ display: "none" }}
        id="fileInput"
      />
      <button
        className="bg-black-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded"
        onClick={() => document.getElementById("fileInput")?.click()}
      >
        Open
      </button>
      <button
        className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded"
        onClick={SendData}
      >
        Send API
      </button>
      <button
        className="bg-yellow-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded"
        onClick={GetSimbolo}
      >
        Simbolos
      </button>
      <button
        className="bg-green-500 hover:bg-orange-700 text-white font-bold py-2 px-4 rounded"
        onClick={GetError}
      >
        Errores
      </button>
      <button
        className="bg-pink-500 hover:bg-purple-700 text-white font-bold py-2 px-4 rounded"
        onClick={GetAst}
      >
        AST
      </button>
    </div>
  );
}
