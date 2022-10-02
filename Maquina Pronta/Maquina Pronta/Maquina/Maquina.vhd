--importando as bibliotecas necessárias para realizar as operações de escolha
LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

--Declarando as váriaveis utilizadas no decorrer das funções, declarando se as mesmas são do tipo de entrada(in) ou saida(out)
entity Maquina is
	port(
		--váriaveis para endereçar cada pino da placa e representar os visores
		M05,M1: 		in std_logic_vector(3 downto 0);
		--vetor que contem 2 pinos endereçados para escolha
		OP: 		  	in std_logic_vector(1 downto 0);
		--vetor que contem 2 leds para indicar qual produto o mesmo já pode adquirir
		LED: 		   out std_logic_vector (1 downto 0);
	);

	end Maquina;

	--definindo os signais de escolha que a maquina irá usar
	architecture Escolha of Maquina is

	--definindo o tipo de signal 
	signal entrada1              : integer;
	signal entrada2	           : integer;
	signal TOTAL_DEPOSITADO   	  : integer;


	begin
	
	--realizando o processo de receber e contabilidar as moedas
	process(entrada1,entrada2,TOTAL_DEPOSITADO)

	begin
	--capturando todas as possíveis entradas de moedas de 0,50 
		case(M05) is
			when "0001"	=> entrada1 <= 2;
			when "0010"	=> entrada1 <= 2;
			when "0100"	=> entrada1 <= 2;
			when "1000"	=> entrada1	<= 2;
			when "0011"	=> entrada1 <= 4;
			when "0111"	=> entrada1 <= 6;
			when "1111"	=> entrada1 <= 8;
			when "1100"	=> entrada1 <= 4;
			when "1110"	=> entrada1 <= 6;
			when others => entrada1 <= 0;
		end case;
		
	--possíveis depositos de moedas de 1,00
		case(M1) is
			when "0001" =>	entrada2 <= 1;
			when "0010"	=> entrada2 <= 1;
			when "0100"	=> entrada2 <= 1;
			when "1000"	=> entrada2 <= 1;
			when "0011"	=> entrada2 <= 2;
			when "0111"	=> entrada2 <= 3;
			when "1111"	=> entrada2 <= 4;
			when "1100"	=> entrada2 <= 2;
			when "1110"	=> entrada2 <= 3;
			when others => entrada2 <= 0;
		end case;
		
	--somando e contabilizando a quantidade de dinheiro depositado na máquina
		TOTAL_DEPOSITADO <= entrada1 + entrada2;

	end process;

	--realizando os processos em cima do valor depositado e da opção escolhida pelo usuário
	process(TOTAL_DEPOSITADO, OP)
		begin

		if(TOTAL_DEPOSITADO >= 3 and TOTAL_DEPOSITADO < 4) then
		
	--acende o led da água caso o valor depositado permita o mesmo comprar
			LED <= "10";
			
		--recebe o signal da escolha e assim exibe nos visores utilizando binário para representar ativar os segmentos de cada visor
			case (OP) is
			
				when "01"   =>   DISPLAY <= "11111110001000100000100000100001000"; --AGUA
				--Exibindo Erro se o usuário tentar comprar refrigerante tendo apenas o dinheiro da água
				when "10" 	=>	  DISPLAY <= "11111111000000100111010011100000110";
				--Exibindo Erro se o usuário levantar os dois pinos, pois não é possível comprar água e refri 
				when "11" 	=>	  DISPLAY <= "11111111000000100111010011100000110";
				--Manda o sinal ligado pro visor, assim cancelando se o mesmo não precisar estar ligado
				
				when others =>   DISPLAY <= "11111111111111111111111111111111111";
			end case;

		elsif( TOTAL_DEPOSITADO >= 4) then
		
	--acende o led do refri caso o valor depositado permita o mesmo comprar
			LED <= "11";
			
		--recebe o signal da escolha e assim exibe nos visores utilizando binário para representar ativar os segmentos de cada visor
			case (OP) is
			
				when "01"   =>   DISPLAY <= "11111110001000100000100000100001000";    --AGUA
				when "10"   =>   DISPLAY <= "10011111001110000111000001101001110";    -- refri
				--Erro se o usuário levar ambas as pinagens ao mesmo tempo
				when "11" 	=>	  DISPLAY <= "11111111000000100111010011100000110";	 -- ERRO
				--Manda o sinal ligado pro visor, assim cancelando se o mesmo não precisar estar ligado
				
				when others =>   DISPLAY <= "11111111111111111111111111111111111";
			end case;
			else
				LED <= "00";

		end if;
	end process;
end architecture;
