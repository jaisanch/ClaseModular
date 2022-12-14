**free

    /copy COPY 
    
    dcl-Proc PrEntrada Export;
      dcl-pi *n;
        InNombre like(wNombreT) Const;
        InId like(wIdT) Const;
        OutMsgId like(wMsgId);
      end-pi;

      //- Structures

      dcl-Ds Dsusuario likeDs(DsusuarioT);

      //- Variables

      dcl-s wSqlState like(wSqlStateT); 

      //- Process

      Dsusuario.Nombre = InNombre;
      Dsusuario.Id = InId;
      DsUsuario.Fecha = FnFormatoFecha(%Date());
      DsUsuario.Tiempo = FnFormatoTiempo(%Time());

      PrInsertar(DsUsuario:wSqlState);

    end-Proc;