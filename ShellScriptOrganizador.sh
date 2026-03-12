#!/bin/bash


mkdir -p organizacao/{textos,imagens,codigos,outros}

total_movidos=0

nome_script=$(basename "$0")

for arquivo in *; do
    
    if [ -f "$arquivo" ] && [ "$arquivo" != "$nome_script" ]; then
        
       
        case "$arquivo" in
            *.txt|*.pdf)
                mv "$arquivo" organizacao/textos/
                ;;
            *.jpg|*.png)
                mv "$arquivo" organizacao/imagens/
                ;;
            *.c|*.sh)
                mv "$arquivo" organizacao/codigos/
                ;;
            *)
                mv "$arquivo" organizacao/outros/
                ;;
        esac
        
      
        ((total_movidos++))
    fi
done

echo "Organização concluída com sucesso!"
echo "Total de arquivos movidos: $total_movidos"