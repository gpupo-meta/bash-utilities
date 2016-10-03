

## Direitos autorais e de licença

Este componente está sob a [licença MIT](https://github.com/gpupo/common-sdk/blob/master/LICENSE)

Para a informação dos direitos autorais e de licença você deve ler o arquivo
de [licença](https://github.com/gpupo/common-sdk/blob/master/LICENSE) que é distribuído com este código-fonte.

### Resumo da licença

Exigido:

- Aviso de licença e direitos autorais

Permitido:

- Uso comercial
- Modificação
- Distribuição
- Sublicenciamento

Proibido:

- Responsabilidade Assegurada

---

## Instalação

    git clone --depth=1 https://github.com/gpupo/bash-utilities.git ~/bash-utilities;

### Update

    cd ~/bash-utilities && git pull;

## Uso

Logs and monitoring every 1 minute the load time of a URL

    ~/bash-utilities/loadTime.sh www.google.com /var/log/loadTime.log


Backup crontab from every user on the server

    sudo $HOME/bash-utilities/crontabDump.sh /var/log/cron

crontab line:

    1 6 * * *  sudo $HOME/bash-utilities/crontabDump.sh /var/log/cron


## License

MIT, see LICENSE.
