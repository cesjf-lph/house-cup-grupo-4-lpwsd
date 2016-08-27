
package br.cesjf.lpwsd;


public class Professor {
    private String nome;
    private String endereco;
    private String telefone;
    private int matricula;
    private String aula;
    private String sexo;

   
    public String getNome() {
        return nome;
    }

    
    public void setNome(String nome) {
        this.nome = nome;
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

    
    public int getMatricula() {
        return matricula;
    }

  
    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

   
    public String getAula() {
        return aula;
    }

   
    public void setAula(String aula) {
        this.aula = aula;
    }

   
    public String getSexo() {
        return sexo;
    }

    
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
}
