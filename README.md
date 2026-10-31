# devsecops-fiap

Projeto da disciplina DevSecOps and Cloud Computing (FIAP, Engenharia de Software).

- **CP4 (aula 17):** pipeline com Gitleaks e Semgrep. O commit `2a58d2c` tem uma chave AWS falsa plantada de propósito no lab; ela nunca foi credencial real e está registrada no `.gitleaksignore`.
- **CP5:** site estático em container (`Dockerfile` + `site/`) e workflow `security.yml` com três barreiras: Gitleaks (segredos), Semgrep (SAST) e Trivy (vulnerabilidades da imagem Docker).

## Rodar o site

```bash
docker build -t devsecops-fiap .
docker run --rm -p 8080:8080 devsecops-fiap
```

Abre em http://localhost:8080. O container roda com nginx sem root (usuário 101).
