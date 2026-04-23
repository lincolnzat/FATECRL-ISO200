clear;


SENHA_MESTRE="123"
SENHA_DIGITADA=""


while [ "$SENHA_DIGITADA" != "$SENHA_MESTRE" ]; do
    read -sp "Digite a senha para acessar o sistema: " SENHA_DIGITADA
    echo "Confirmando..."
    sleep 1s;

    if [ "$SENHA_DIGITADA" != "$SENHA_MESTRE" ]; then
        echo "Senha incorreta! Tente novamente."
        echo "--------------------------------"
        sleep 1s;
    fi
done

echo "Acesso liberado! Bem-vindo ao sistema!"
