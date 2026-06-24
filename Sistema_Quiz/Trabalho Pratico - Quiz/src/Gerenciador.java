
import java.util.InputMismatchException;
import java.util.Scanner;

public class Gerenciador {
    private static final Scanner sc = new Scanner(System.in);

    public void iniciarQuiz(){
        System.out.println("Bem-vindo ao Quiz!");

        System.out.println(" ----- Menu ----- ");
        int opcao, opcaoTema;

        do{
            opcao = menuPrincipal();
            switch(opcao){
                case 1:
                    opcaoTema = menuQuiz();

                    System.out.println(" Tema escolhido: " + opcaoTema); //Exibir o tema, não o número
                    switch(opcaoTema){
                        case 1:
                            break;
                        case 2:
                            break;
                        case 3:
                            break;
                        default:
                            System.out.println("Opção inválida.");
                    }

                    break;
                case 2:
                    System.out.println("Cadastrando jogador");
                    break;
                case 3:
                    System.out.println("Editando informações do jogador");
                    break;
                case 4:
                    System.out.println("Saindo do programa");
                    break;
                default:
                    System.out.println("Opção inválida. Tente novamente.");
            }
        }while(opcao != 4);
    }
    
    public int menuPrincipal(){ //Chamar Menu principal
        System.out.println("Informe a opção desejada: ");
        System.out.println("1 - Iniciar Quiz\n"+
                            "2 - Cadastrar jogador\n"+
                            "3 - Editar informações do jogador\n"+
                            "4 - Ver pontuação\n"+ //Ou ranking
                            "5 - Sair\n");

        try{
            int opcao = sc.nextInt();
            sc.nextLine(); // Limpar scanner
             return opcao;
        }catch(InputMismatchException e){
            sc.nextLine(); // Limpar scanner
            return -1;
        }
    }

    public int menuQuiz(){
        System.out.println("Informe o tema do Quiz: ");
        System.out.println("1 - Tema 1\n"+
                           "2 - Tema 2\n"+
                           "3 - Tema 3\n");
        try{
            int opcao = sc.nextInt();
            sc.nextLine(); // Limpar scanner
            return opcao;
        }catch(InputMismatchException e){
            sc.nextLine(); // Limpar scanner
            return -1;
        }
    }
}