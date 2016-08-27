
package br.cesjf.lpwsd;

public class Aluno {
    private String nome;
    private int matricula;
    private int turma;
    private String endereco;
    private String telefone;
    private String email;
    private int nota;
    private String dataMatricula;
    private String sexo;

   
    public String getNome() {
        return nome;
    }

    
    public void setNome(String nome) {
        this.nome = nome;
    }

   
    public int getMatricula() {
        return matricula;
    }

    
    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    
    public int getTurma() {
        return turma;
    }

    
    public void setTurma(int turma) {
        this.turma = turma;
    }

    
    public String getEndereco() {
        return endereco;
    }

   
    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

   
    public String getTelefone() {
        return telefone;
    }

   
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

   
    public String getEmail() {
        return email;
    }

   
    public void setEmail(String email) {
        this.email = email;
    }

    public int getNota() {
        return nota;
    }

   
    public void setNota(int nota) {
        this.nota = nota;
    }

   
    public String getDataMatricula() {
        return dataMatricula;
    }

    public void setDataMatricula(String dataMatricula) {
        this.dataMatricula = dataMatricula;
    }

    
    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
}
