clear;
while true
do
 echo "#    ███╗   ███╗███████╗███╗   ██╗██╗   ██╗
#    ████╗ ████║██╔════╝████╗  ██║██║   ██║
#    ██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║
#    ██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║
#    ██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝
#    ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝ 
# Nome: Lincoln Vinícius S. Souza, Isaac Marciano Passos
# DOJO 1 - Preparação do Ambiente
# mkdir LabOS - cd LabOS - ls, mkdir scripts logs; chmod 700 logs; cd scripts; nano monitor.sh
#                                          ";
 echo "1- Listar arquivos da pasta📋 ";
 echo "2- Exibir os processos com mais consumo💻";
 echo "3 - Encerrar processo🏃‍";
 echo "4 - Listar jobs em segundo plano";
 echo "5 - Sair";

read op;

case $op in
       1)
       echo "Listando arquivos: 📋";
	ls -al;
	sleep 3s;
	clear;
	;;
       2)
       echo "Processos com maior consumo: 💻";
	ps -aux --sort=-%cpu | head -n 6;
	sleep 3s;
	clear;
	;;
       3)
      	 nomeps="";
	 echo "Digite o processo que você quer finalizar 🤖 ";
	 read nomeps;
	 pkill $nomeps;
	 echo "Processo $nomeps foi morto.";
	 sleep 3s;
	 ;;
	 
	4)
	 echo "Listando os jobs... ⛑️";
	 sleep 100 &
	 jobs;
	 ;;
	 
	5)
	 echo "Encerrando... 👟";
	 sleep 3s;
	 clear;
	 break;
	 ;;
	*) 
	  echo "Escolha entre as opções do menu 🫩";
	  sleep 3s;
	  clear;
	 ;;
esac

done

