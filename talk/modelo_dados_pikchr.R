pikchr_code <- "
/*
  Código inicial. Para comentários em linha use \\ ou #
*/
  len = 3mm
  pi = 3.141593
  pointrad = 0.01in
  linerad = 1.5mm
  
  define zero_or_many_right {
    Czpr: circle rad len/2
    LzrpR: line from Czpr.e right .75*len*cos(pi/4)
    LzrpU: line from Czpr.e go .75*len heading 45
    LzrpD: line from Czpr.e go .75*len heading 135
    dot fill red at Czpr.w rad pointrad
  }
  
  define zero_or_many_left {
    Czpl: circle rad len/2
    LzlpL: line from Czpl.w left .75*len*cos(pi/4)
    LzlpU: line from Czpl.w go .75*len heading -45
    LzlpD: line from Czpl.w go .75*len heading -135
    dot fill red at Czpl.e rad pointrad
    move to Czpl.e
  }
  
  
  define many_right {
    Lmar0: line right len*(1 + .75*cos(pi/4)) 
    //Lmal1: line  from Lmal0.end - (0,len/2) up len
    LmarU: line from Lmar0.end - (.75*cos(pi/4)*len, 0) go .75*len heading 45
    LmarD: line from Lmar0.end - (.75*cos(pi/4)*len, 0) go .75*len heading 135
    dot fill red at Lmar0.w rad pointrad
  }
  
  define many_left {
    Lmal0: line left len*(1 + .75*cos(pi/4))
    //Lmal1: line  from Lmal0.end - (0,len/2) up len
    LmapU: line from Lmal0.end + (.75*cos(pi/4)*len, 0) go .75*len heading -45
    LmapD: line from Lmal0.end + (.75*cos(pi/4)*len, 0) go .75*len heading -135
    dot fill red at Lmal0.e rad pointrad
  }
  
  define one_or_many_right {
    Lopr0: line right len
    Lopr1: line  from Lopr0.end - (0,len/2) up len
    LolrL: line from Lopr1.c right .75*len*cos(pi/4)
    LolrU: line from Lopr1.c go .75*len heading 45
    LolrD: line from Lopr1.c go .75*len heading 135
    dot fill red at Lopr0.w rad pointrad
  }
  
  define one_or_many_left {
    Lopl0: line left len
    Lopl1: line from Lopl0.end - (0,len/2) up len
    LolpL: line from Lopl1.c left .75*len*cos(pi/4)
    LolpU: line from Lopl1.c go .75*len heading -45
    LolpD: line from Lopl1.c go .75*len heading -135
    dot fill red at Lopl0.e rad pointrad
  }
  
  
  define one_only_right {
    Loor0: line right len*(1 + .75*cos(pi/4)) 
    Loor1: line from Loor0.end - (.75*cos(pi/4)*len, len/2) up len
    Loor2: line from Loor0.end - (.75*cos(pi/4)*len/2, len/2) up len
    //Loor2: line from Loor0.start - (-len/2,len/2) up len
    dot fill red at Loor0.w rad pointrad
  }
  
  
  define one_only_left {
    Lool0: line left len*(1 + .75*cos(pi/4)) 
    Lool1: line from Lool0.end - (-.75*cos(pi/4)*len, len/2) up len
    Lool2: line from Lool0.end - (-.75*cos(pi/4)*len/2,len/2) up len
    dot fill red at Lool0.e rad pointrad
  }
  
  define one_left {
    Lool0: line left len*(1 + .75*cos(pi/4)) 
    Lool1: line from Lool0.end + (0.75*cos(pi/4)*len, -len/2) up len
    //Lool2: line from Lool0.end - (-len*0.7071068/2,len/2) up len
    dot fill red at Lool0.e rad pointrad
  }
  
  define one_right {
    Losor0: line right len*(1 + .75*cos(pi/4)) 
    Losor1: line from Losor0.end - (.75*cos(pi/4)*len, len/2) up len
    //Losor2: line from Losor0.end - (len*0.7071068/2,len/2) up len
    //Loor2: line from Loor0.start - (-len/2,len/2) up len
    dot fill red at Losor0.w rad pointrad
  }
  
  
  define zero_or_one_left {
    [
      Czol: circle rad len/2
      Lzol0: line from Czol.w left .75*len*cos(pi/4)
      Lzol1: line from Lzol0.start - (0.75*cos(pi/4)*len/2,len/2) up len
      dot fill red at Czol.e rad pointrad
    ] 
    move to last .e
  }
  
  define zero_or_one_right {
    Czor: circle rad len/2
    Lzor0: line from Czor.e right .75*len*cos(pi/4)
    Lzor1: line from Lzor0.start - (-0.75*cos(pi/4)*len/2,len/2) up len
    dot fill red at Czor.w rad pointrad
    move to  Czor.e
  }
  
  $dist = 2cm
  $dist = $dist*1.5
  
  Politica: [
    Entidade: box rad 5mm  ht 5mm wid $dist "Política"  bold fill 0x277da1
    Key:  box "Política – ID " bold ljust small fit wid $dist with .n at Entidade.s fill 0xf5f5f5 
    box "Nome" ljust small fit wid $dist with .n at last.s  fill 0xffffff
    box "Objetivos Estratégicos" ljust small fit wid $dist with .n at last.s fill 0xf5f5f5 
    box "···" ljust small fit wid $dist with .n at last.s  fill 0xffffff
  ]
  
  Programa: [
    Entidade: box rad 5mm  ht 5mm wid $dist "Programa"  bold fill 0x577590
    Key:  box "Programa – ID" bold ljust small fit wid $dist with .n at Entidade.s fill 0xf5f5f5 
    FK1:  box "Política – ID" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    box "Nome" ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
    box "Descrição" ljust small fit wid $dist with .n at last.s fill 0xffffff
    box "Órgão Responsável" ljust small fit wid $dist with .n at last.s fill 0xf5f5f5 
    box "···" ljust small fit wid $dist with .n at last.s  fill 0xffffff
  ] with .nw at .5 right of Politica.ne
  
  Projeto: [
    Entidade: box rad 5mm  ht 5mm wid $dist "Projeto"  bold fill 0x4d908e
    Key:  box "Projeto – ID" bold ljust small fit wid $dist with .n at Entidade.s fill 0xf5f5f5 
    FK1:  box "Programa – ID" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    box "Nome" ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
    box "Data de Início" ljust small fit wid $dist with .n at last.s fill 0xffffff
    box "Data de Término" ljust small fit wid $dist with .n at last.s fill 0xf5f5f5 
    box "Indicadores" ljust small fit wid $dist with .n at last.s  fill 0xffffff
    box "···" ljust small fit wid $dist with .n at last.s  fill  0xf5f5f5 
  ] with .nw at .5 right of Programa.ne
  
  ProjInvest: [
    Entidade: box rad 5mm  ht 5mm wid $dist "Projeto – Investimento"  bold fill 0x43aa8b
    Key:  box "Projeto – Investimento – ID" bold ljust small fit wid $dist with .n at Entidade.s fill 0xf5f5f5 
    FK1:  box "Projeto – ID" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    FK2:  box "Investimento – ID" bold ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
  ] with .nw at .5 right of Projeto.ne
  
  
  
  Investimento: [
    Entidade: box rad 5mm  ht 5mm wid $dist "Investimento"  bold fill 0x90be6d
    Key:  box "Investimento – ID" bold ljust small fit wid $dist with .n at Entidade.s fill 0xf5f5f5 
    box "Nome" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    box "Descrição" bold ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
    box "Valor Planejado" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    box "Valor Executado" bold ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
    FK4:  box "Status – ID" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    FK3:  box "Localização – ID" bold ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
    FK1:  box "Classificação Funcional – ID" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    FK2:  box "Fonte Orçamentária – ID" bold ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
    box "Data Início" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    box "Data Término" bold ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
    box "···" ljust small fit wid $dist with .n at last.s  fill 0xffffff
  ] with .nw at .25 below ProjInvest.sw
  
  Contrato: [
    Entidade: box rad 5mm  ht 5mm wid $dist "Contrato"  bold fill 0xf9c74f
    Key:  box "Contrato – ID" bold ljust small fit wid $dist with .n at Entidade.s fill 0xf5f5f5 
    FK1:  box "Investimento – ID" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    box "Número" bold ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
    box "Modalidade da Licitação" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    box "Data" bold ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
    FK2:  box "Fornecedor – ID" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    box "Valor Adjudicado" bold ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
    box "Valor Final" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    box "···" ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
  ] with .ne at .25 below Projeto.se
  
  
  Fornecedor: [
    Entidade: box rad 5mm  ht 5mm wid $dist "Fornecedor"  bold fill 0xf9844a
    Key:  box "Fornecedor – ID" bold ljust small fit wid $dist with .n at Entidade.s fill 0xf5f5f5 
    box "Nome" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    FK1:  box "CNPJ – ID" bold ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
    box "Endereço" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    box "···" ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
  ] with .ne at .25 below Programa.se
  
  
  Localizacao: [
    Entidade: box rad 5mm  ht 5mm wid $dist "Localização"  bold fill 0xf8961e
    Key:  box "Localização – ID" bold ljust small fit wid $dist with .n at Entidade.s fill 0xf5f5f5 
    box "Município" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    FK1:  box "Código IBGE – ID" bold ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
    box "···" ljust small fit wid $dist with .n at last.s  fill 0xffffff 
  ] with .ne at .25 below Fornecedor.se
  
  
  Fonte: [
    Entidade: box rad 5mm  ht 5mm wid $dist "Fonte Orçamentária"  bold fill 0xf3722c
    Key:  box "Fonte – ID" bold ljust small fit wid $dist with .n at Entidade.s fill 0xf5f5f5 
    box "Nome" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    FK1:  box "Tipo – ID" bold ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
    box "···" ljust small fit wid $dist with .n at last.s  fill 0xffffff 
  ] with .ne at .25 below Politica.se
  
  ClassFunc: [
    Entidade: box rad 5mm  ht 5mm wid $dist "Classifição Funcional"  bold fill 0xf94144
    Key:  box "Fonte – ID" bold ljust small fit wid $dist with .n at Entidade.s fill 0xf5f5f5 
    box "Nome" bold ljust small fit wid $dist with .n at last.s  fill 0xffffff
    FK1:  box "Tipo – ID" bold ljust small fit wid $dist with .n at last.s  fill 0xf5f5f5 
    box "···" ljust small fit wid $dist with .n at last.s  fill 0xffffff 
  ] with .ne at .25 below Fonte.se
  
  A0: [one_left()] with .w at Politica.Key.e
  A1: [many_right()] with .e at Programa.FK1.w
  A2: [one_left()] with .w at Programa.Key.e
  A3: [many_right()] with .e at Projeto.FK1.w
  A4: [many_left()] with .w at Projeto.Key.e
  A5: [many_right()] with .e at ProjInvest.FK1.w
  A6: [many_left()] with .w at ProjInvest.FK2.e
  A7: [one_left()] with .w at Investimento.Key.e
  A8: [one_right()] with .e at Investimento.Key.w
  A9: [many_left()] with .w at Contrato.FK1.e
  A10: [many_right()] with .e at Contrato.FK2.w
  A11: [one_left()] with .w at Fornecedor.Key.e
  A12: [one_right()] with .e at Investimento.FK3.w
  A13: [one_right()] with .e at Investimento.FK2.w
  A14: [one_left()] with .w at Investimento.FK1.e
  A15: [many_left()] with .w at Localizacao.Key.e
  A16: [one_left()] with .w at ClassFunc.Key.e
  A17: [many_right()] with .e at Fonte.Key.w
  
  line from A0.e right until even with 1/2<A0.e, A1.w> \
  then down until even with A1.w then to A1.w behind A0
  line from A2.e right until even with 1/2<A2.e, A3.w> \
  then down until even with A3.w then to A3.w behind A2
  line from A4.e right until even with 1/2<A4.e, A5.w> \
  then down until even with A5.w then to A5.w behind A4
  line from A6.e right (A1.x - A0.x)/2 \
  then down until even with A7.e then to A7.e behind A6
  line from A8.w left until even with 1/2<A8.e, A9.w> \
  then down until even with A9.w then to A9.w behind A8
  line from A10.w left until even with 1/2<A10.e, A11.w> \
  then up until even with A11.w then to A11.w behind A10
  line from A12.w left  2*(A12.w.x - Contrato.e.x)/3 \
  then down until even with .3 below Contrato.s \
  then left until even with 1/2<A10.e, A11.w> \
  then up until even with A15.e then to A15.e behind A12
  line from A13.w left  1*(A12.w.x - Contrato.e.x)/3 \
  then down until even with .4 below Contrato.s \
  then left until even with 1/2<A0.e, A1.w> \
  then up until even with A16.e then to A16.e behind A13
  line from A14.e right  (A12.w.x - Contrato.e.x)/2  \
  then down until even with .5 below Contrato.s \
  then left until even with (A12.w.x - Contrato.e.x)/2 left of A17.w
  then up until even with A17.e then to A17.e behind A14
  "