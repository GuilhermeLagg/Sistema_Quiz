public class Resposta {
    private int idResposta;
    private boolean correta;
    private int idPartida;     // FK
    private int idPergunta;    // FK
    private int idAlternativa; // FK

    public Resposta() {}

    public int getIdResposta() { return idResposta; }
    public void setIdResposta(int idResposta) { this.idResposta = idResposta; }

    public boolean isCorreta() { return correta; }
    public void setCorreta(boolean correta) { this.correta = correta; }

    public int getIdPartida() { return idPartida; }
    public void setIdPartida(int idPartida) { this.idPartida = idPartida; }

    public int getIdPergunta() { return idPergunta; }
    public void setIdPergunta(int idPergunta) { this.idPergunta = idPergunta; }

    public int getIdAlternativa() { return idAlternativa; }
    public void setIdAlternativa(int idAlternativa) { this.idAlternativa = idAlternativa; }
}