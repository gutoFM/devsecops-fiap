// Calculadora do site: lê a conta da URL (ex.: calculadora.html?conta=2*21) e mostra o resultado.
const params = new URLSearchParams(window.location.search);
const conta = params.get("conta") || "0";
document.getElementById("resultado").textContent = eval(conta);
