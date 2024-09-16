# EngDados  
Repositorio para matéria de Engenharia de Dados
### Projessor  
Anderson Nascimento
# Programas Utilizados  
BRModels  http://www.sis4.com/brModelo/antigo.html  
RelaX https://dbis-uibk.github.io/relax/landing  
# AC
## Modelo Conceitual
[![Modelo Conceitual](./AC/print-modeloconceitual_AC.png)](./AC/print-modeloconceitual_AC.png)  
## Modelo Logico  
Aluno (\_matrícula\_, nome, sexo, idade, telefones, e-mail, rua, número, complemento, bairro, cidade, cep)
Turma (\_numturma\_, turno, semestre, qntdvagas)
Matricula (\_*matrícula*\_, numturma)
Disciplina (iddisc, ementa, cargahoraria)
Curso (idcurso, nome, datainico, tipo, cargahoraria)
Disciplina_Curso (iddisc, idcurso)
Departamento (coddepartamento, nome, sala, bloco)
Coordenador (matrícula, nome, sexo, telefones, datanasc, rua, número, complemento, bairro, cidade, cep)
Professor (matrícula, títulos)
Cursoprof (codcurso, ano, instituição)
Professor_Cursoprof (matricula, codcurso)



