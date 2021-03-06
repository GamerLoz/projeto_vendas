#include <hmg.ch>

FUNCTION enche_combo_estado(cForm,cComp,cUF)
LOCAL posicaoEstado, nPosicao := 1

   aEstado := {"AC-Acre","AL-Alagoas","AP-Amap�","AM-Amazonas","BA-Bahia","CE-Cear�","DF-Distrito Federal","ES-Esp�rito Santo","GO-Goi�s","MA-Maranh�o","MT-Mato Grosso","MS-Mato Grosso do Sul","MG-Minas Gerais","PR-Paran�","PB-Para�ba","PA-Par�","PE-Pernambuco","PI-Piau�","RJ-Rio de Janeiro","RN-Rio Grande do Norte","RS-Rio Grande do Sul","RO-Rondonia","SC-Santa Catarina","SE-Sergipe","SP-S�o Paulo","TO-Tocantins" }
   
   DOMETHOD(cForm,cComp,"DELETEALLITEMS")
   
   FOR nPos := 1 TO LEN(aEstado)
   
      DOMETHOD(cForm,cComp,"ADDITEM", aEstado[nPos] )
      
      IF( UPPER(cUF) == SUBSTR(aEstado[nPos],1,2) )
      
         nPosicao := nPos
         
      ENDIF
      
   NEXT
   
   nPosicao := LEN(aEstado) - nPosicao
   
   posicaoEstado := GETPROPERTY(cForm,cComp,"ITEMCOUNT") - nPosicao
 
   SETPROPERTY(cForm,cComp,"VALUE", posicaoEstado )
 
RETURN nil