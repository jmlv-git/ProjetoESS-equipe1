Feature: Solicita��o de loca��o
Como o 'cliente' do sistema de locadora
Eu quero solicitar a loca��o de um carro
De forma que eu indique a data de retirada e data de devolu��o
	
Cen�rio: o cliente solicita a loca��o de um ve�culo
Dado que o cliente tem acesso a listagem de ve�culos dispon�veis para loca��o
E escolhe um modelo de ve�culo que deseja locar
E e informa a data que pretende retirar e devolver o ve�culo
E informa sua forma de pagamento
Quando o cliente envia sua solicita��o de loca��o ao sistema
Ent�o o administrador ir� analisar a solicita��o do cliente para a loca��o do ve�culo

Cen�rio: Datas n�o informadas
Dado que o 'cliente' tem acesso a listagem de ve�culos dispon�veis para loca��o
E escolhe um modelo de ve�culo que deseja locar
Quando tenta solicitar a loca��o de um ve�culo
E n�o informa a data de solicita��o ou a data de devolu��o
Ent�o o aluguel deve automaticamente bloqueado
E um erro apropriado deve ser reportado
E a solicita��o n�o deve ser enviada para o 'administrador'

Cen�rio: Datas inv�lidas
Dado que o 'cliente' tem acesso a listagem de ve�culos dispon�veis para loca��o
E escolhe um modelo de ve�culo que deseja locar
Quando informa a data de solicita��o e de devolu��o
E a data de solicita��o � posterior a de devolu��o
Ent�o o aluguel deve automaticamente bloqueado
E um erro apropriado deve ser reportado
E a solicita��o n�o deve ser enviada para o 'administrador'
