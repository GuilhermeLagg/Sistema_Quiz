import java.time.LocalDateTime;

public class Partida {
    private int idPartida;
    private LocalDateTime dataPartida;
    private int pontuacao;
    private int quantidadeAcertos;
    private int idUsuario; // FK para o jogador que jogou

    public Partida() {}

    public int getIdPartida() { return idPartida; }
    public void setIdPartida(int idPartida) { this.idPartida = idPartida; }

    public LocalDateTime getDataPartida() { return dataPartida; }
    public void setDataPartida(LocalDateTime dataPartida) { this.dataPartida = dataPartida; }

    public int getPontuacao() { return pontuacao; }
    public void setPontuacao(int pontuacao) { this.pontuacao = pontuacao; }

    public int getQuantidadeAcertos() { return quantidadeAcertos; }
    public void setQuantidadeAcertos(int quantidadeAcertos) { this.quantidadeAcertos = quantidadeAcertos; }

    public int getIdUsuario() { return idUsuario; }
    public void setIdUsuario(int idUsuario) { this.idUsuario = idUsuario; }
}