LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


ENTITY Processador IS
	PORT
	(
		-- Barramentos de dados unidirecionais (DATA_IN e DATA_OUT) de 8 bits
		-- Unidirectional Data buses (DATA_IN and DATA_OUT) (8 bits)
		data_in		   :  IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		data_out	      :  OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		DISPLAY        :  OUT std_logic_vector(34 downto 0)
	);
end Processador;

ARCHITECTURE CPU OF Processador IS
	--constantes para seleção
	constant ULA_add 			    :  std_logic_vector(9 downto 0)     := "0000000000"; -- todos pinos desligados ( adição )
	constant ULA_sub 			    :  std_logic_vector(9 downto 0)     := "1000000000"; -- 1 pino levantado subtração
	constant ULA_div				:  std_logic_vector(9 downto 0)     := "0100000000"; 	-- 2 pino levantado divisão
	constant ULA_mult 			    :  std_logic_vector(9 downto 0)     := "0010000000"; -- 3 pino levantado multiplicação
	constant ULA_maior 			    :  std_logic_vector(9 downto 0)     := "0001000000"; -- 4 pino levantado ( maior)
	constant ULA_menor 			    :  std_logic_vector(9 downto 0)     := "0000100000"; -- 5 pio levantado ( número menor)
	constant ULA_maiorigual 	    :  std_logic_vector(9 downto 0)     := "0000010000"; -- 6 pino levantado (maior igual)
	constant ULA_menorigual 	    :  std_logic_vector(9 downto 0)     := "0000001000"; -- 7 pino levantado ( menor igual)
	constant ULA_igual 			    :  std_logic_vector(9 downto 0)     := "0000000100"; -- 8 pino levantado ( número iguais)
	constant ULA_diferente 	        :  std_logic_vector(9 downto 0)     := "0000000010"; -- 9 pino levantado (número diferente)
	constant JUMP					:  std_logic_vector(9 downto 0)     := "0000000001"; --ultimo pino ativo ( JP do JMP)
	constant LOAD					:  std_logic_vector(9 downto 0)     := "1000000001"; --ok
	constant STORE				    :  std_logic_vector(9 downto 0)     := "1000000010";
	constant MOV					:  std_logic_vector(9 downto 0)     := "1000000100"; --ok

	-- Sinais utilizados no programa (Funcionamento como um fio)
    signal resultado 	  		:  STD_LOGIC_VECTOR(3 downto 0);    -- vai receber o resultado das operações
	signal register_aux    	    :  std_logic_vector(7 downto 0);    -- Registrador auxiliar
    signal PC               	:  std_logic_vector(9 downto 0);    -- Program Counter
	signal aux              	:  std_logic_vector(7 downto 0);
	signal A                	:  std_logic_vector(3 downto 0);
	signal B                	:  std_logic_vector(3 downto 0);
    signal aux_int, aux_int_A, aux_int_B          	:  INTEGER;
    signal endereco         	:  INTEGER;
	 signal NUMERO : std_logic_vector(7 downto 0) := "00000001" ;

	-- Matriz de memoria
    TYPE matrizdamemoria is array (0 to 4) of STD_LOGIC_VECTOR(7 downto 0);
	 SIGNAL memoria: matrizdamemoria;

	--  Matriz do registrador
	TYPE matrizdados is array (0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL registrador: matrizdados :=
	(
		"00000000",
		"00010000",
		"00100000",
		"00110000",
		"01000000",
		"01010000",
		"01100000",
		"01110000",
		"10000000",
		"10010000",
		"10100000",
	    "10110000",
		"11000000",
		"11010000",
		"00000000",
		"00010000"
	);
	begin
		process(data_in)
		begin
			-- Recebe o endereço que esta no registrador na posição 0 da matriz registrador
			endereco <= conv_integer(registrador(0)(3 downto 0));

			-- Colocando um valor de inicio na memória(Pré-definido)
			memoria(endereco) <= "01000010";

			-- PC ira receber os 4 primeiros Bits do registrador de 8Bits para escolha de função
			PC <= data_in;

			-- Valores coletados e separados em 2 valores
			aux <= memoria(endereco);
			A <= aux(7 downto 4);
			B <= aux(3 downto 0);

			-- case para escolhas das funções
			case PC is
				when ULA_add =>
					resultado <= A + B ;


                    aux_int <= CONV_INTEGER(resultado);
                    case(aux_int) is      -- case do decodificador.
							   when 0 => DISPLAY <= "11111111111111100000001000010001000";
				            when 1 => DISPLAY <= "11111111111111111100101000010001000";
				            when 2 => DISPLAY <= "11111111111111010010001000010001000";
				            when 3 => DISPLAY <= "11111111111111011000001000010001000";
				            when 4 => DISPLAY <= "11111111111111001100101000010001000";
				            when 5 => DISPLAY <= "11111111111111001001001000010001000";
				            when 6 => DISPLAY <= "11111111111111000001001000010001000";
				            when 7 => DISPLAY <= "11111111111111011100001000010001000";
				            when 8 => DISPLAY <= "11111111111111000000001000010001000";
				            when 9 => DISPLAY <= "11111111111111001100001000010001000";
				            when others => NULL;
                   end case;



				when ULA_sub =>
					resultado <= A - B ;
                    aux_int <= CONV_INTEGER(resultado);
                    case(aux_int) is      -- case do decodificador.
							  when 0 => DISPLAY <= "11111111111111100000010000010010010";
                       when 1 => DISPLAY <= "11111111111111111100110000010010010";
                       when 2 => DISPLAY <= "11111111111111010010010000010010010";
                       when 3 => DISPLAY <= "11111111111111011000010000010010010";
                       when 4 => DISPLAY <= "11111111111111001100110000010010010";
                       when 5 => DISPLAY <= "11111111111111001001010000010010010";
                       when 6 => DISPLAY <= "11111111111111000001010000010010010";
                       when 7 => DISPLAY <= "11111111111111011100010000010010010";
                       when 8 => DISPLAY <= "11111111111111000000010000010010010";
                       when 9 => DISPLAY <= "11111111111111001100010000010010010";
                       when others => NULL;
                    end case;

				when ULA_mult =>
					resultado <= std_logic_vector(to_unsigned((to_integer(unsigned(A)) * to_integer(unsigned(B))), 4));
                    aux_int <= CONV_INTEGER(resultado);
                    case(aux_int) is      -- case do decodificador.
							  when 0 => DISPLAY <= "11111111111111100000010000011001000";
                       when 1 => DISPLAY <= "11111111111111111100110000011001000";
                       when 2 => DISPLAY <= "11111111111111010010010000011001000";
                       when 3 => DISPLAY <= "11111111111111011000010000011001000";
                       when 4 => DISPLAY <= "11111111111111001100110000011001000";
                       when 5 => DISPLAY <= "11111111111111001001010000011001000";
                       when 6 => DISPLAY <= "11111111111111000001010000011001000";
                       when 7 => DISPLAY <= "11111111111111011100010000011001000";
                       when 8 => DISPLAY <= "11111111111111000000010000011001000";
                       when 9 => DISPLAY <= "11111111111111001100010000011001000";
                       when others => NULL;
                    end case;

				when ULA_div =>
					resultado <= std_logic_vector(to_unsigned(to_integer(unsigned(A)) / to_integer(unsigned(B)), 4));
                    aux_int <= CONV_INTEGER(resultado);
                    case(aux_int) is      -- case do decodificador.
							  when 0 => DISPLAY <= "11111111111111100000011110010100001";
                       when 1 => DISPLAY <= "11111111111111111100111110010100001";
                       when 2 => DISPLAY <= "11111111111111010010011110010100001";
                       when 3 => DISPLAY <= "11111111111111011000011110010100001";
                       when 4 => DISPLAY <= "11111111111111001100111110010100001";
                       when 5 => DISPLAY <= "11111111111111001001011110010100001";
                       when 6 => DISPLAY <= "11111111111111000001011110010100001";
                       when 7 => DISPLAY <= "11111111111111011100011110010100001";
                       when 8 => DISPLAY <= "11111111111111000000011110010100001";
                       when 9 => DISPLAY <= "11111111111111001100011110010100001";
                       when others => NULL; 
                    end case;

				when ULA_maior =>
					if(A > B) then
						resultado <= x"1" ;     -- O X é uma operação que vai passar para o resultado uma variavel desconhecida. o que esta entre aspas, é N numeros que vai ser multiplicado por 4
					else								-- Nesse caso, como só tem um numero dentro, entao vai retorna 4 bits. se tivesse dois numeros, ia retornar 8 bits
						resultado <= x"0" ;
					end if;
                    aux_int <= CONV_INTEGER(resultado);
                    case(aux_int) is      -- case do decodificador.
							  when 0 => DISPLAY <= "11111111111111100000011111110110011";
                       when 1 => DISPLAY <= "11111111111111111100111111110110011";
                       when 2 => DISPLAY <= "11111111111111010010011111110110011";
                       when 3 => DISPLAY <= "11111111111111011000011111110110011";
                       when 4 => DISPLAY <= "11111111111111001100111111110110011";
                       when 5 => DISPLAY <= "11111111111111001001011111110110011";
                       when 6 => DISPLAY <= "11111111111111000001011111110110011";
                       when 7 => DISPLAY <= "11111111111111011100011111110110011";
                       when 8 => DISPLAY <= "11111111111111000000011111110110011";
                       when 9 => DISPLAY <= "11111111111111001100011111110110011";
                       when others => NULL;
                    end case;

				when ULA_menor =>
					if(A < B) then
						resultado <= x"1" ;
					else
						resultado <= x"0" ;
					end if;
                    aux_int <= CONV_INTEGER(resultado);
                    case(aux_int) is      -- case do decodificador.
							  when 0 => DISPLAY <= "11111111111111100000011111110100111";
                       when 1 => DISPLAY <= "11111111111111111100111111110100111";
                       when 2 => DISPLAY <= "11111111111111010010011111110100111";
                       when 3 => DISPLAY <= "11111111111111011000011111110100111";
                       when 4 => DISPLAY <= "11111111111111001100111111110100111";
                       when 5 => DISPLAY <= "11111111111111001001011111110100111";
                       when 6 => DISPLAY <= "11111111111111000001011111110100111";
                       when 7 => DISPLAY <= "11111111111111011100011111110100111";
                       when 8 => DISPLAY <= "11111111111111000000011111110100111";
                       when 9 => DISPLAY <= "11111111111111001100011111110100111";
                       when others => NULL;
                   end case;

				when ULA_maiorigual =>
					if(A >= B) then
						resultado <= x"1" ;
					else
                        resultado <= x"0" ;
           		    end if;
                    aux_int <= CONV_INTEGER(resultado);
			        case(aux_int) is      -- case do decodificador.
							  when 0 => DISPLAY <= "11111111111111100000001101110110011";
                       when 1 => DISPLAY <= "11111111111111111100101101110110011";
                       when 2 => DISPLAY <= "11111111111111010010001101110110011";
                       when 3 => DISPLAY <= "11111111111111011000001101110110011";
                       when 4 => DISPLAY <= "11111111111111001100101101110110011";
                       when 5 => DISPLAY <= "11111111111111001001001101110110011";
                       when 6 => DISPLAY <= "11111111111111000001001101110110011";
                       when 7 => DISPLAY <= "11111111111111011100001101110110011";
                       when 8 => DISPLAY <= "11111111111111000000001101110110011";
                       when 9 => DISPLAY <= "11111111111111001100001101110110011";
                       when others => NULL;
                    end case;

				when ULA_menorigual =>
					if(A <= B) then
                        resultado <= x"1" ;
                     else
						resultado <= x"0" ;
                    end if;
                    aux_int <= CONV_INTEGER(resultado);
                    case(aux_int) is      -- case do decodificador.
							  when 0 => DISPLAY <= "11111111111111100000001101110100111";
                       when 1 => DISPLAY <= "11111111111111111100101101110100111";
                       when 2 => DISPLAY <= "11111111111111010010001101110100111";
                       when 3 => DISPLAY <= "11111111111111011000001101110100111";
                       when 4 => DISPLAY <= "11111111111111001100101101110100111";
                       when 5 => DISPLAY <= "11111111111111001001001101110100111";
                       when 6 => DISPLAY <= "11111111111111000001001101110100111";
                       when 7 => DISPLAY <= "11111111111111011100001101110100111";
                       when 8 => DISPLAY <= "11111111111111000000001101110100111";
                       when 9 => DISPLAY <= "11111111111111001100001101110100111";
                       when others => NULL;
                   end case;

				when ULA_igual =>
					if(A = B) then
						resultado <= x"1" ;
                    else
                        resultado <= x"0" ;
                     end if;

							aux_int <= CONV_INTEGER(resultado);
                     case(aux_int) is      -- case do decodificador.
							  when 0 => DISPLAY <= "11111111111111100000001101110110111";
                       when 1 => DISPLAY <= "11111111111111111100101101110110111";
                       when 2 => DISPLAY <= "11111111111111010010001101110110111";
                       when 3 => DISPLAY <= "11111111111111011000001101110110111";
                       when 4 => DISPLAY <= "11111111111111001100101101110110111";
                       when 5 => DISPLAY <= "11111111111111001001001101110110111";
                       when 6 => DISPLAY <= "11111111111111000001001101110110111";
                       when 7 => DISPLAY <= "11111111111111011100001101110110111";
                       when 8 => DISPLAY <= "11111111111111000000001101110110111";
                       when 9 => DISPLAY <= "11111111111111001100001101110110111";
                       when others => NULL;
                    end case;

				when ULA_diferente =>
					if(A /= B) then
                         resultado <= x"1" ;
                    else
						resultado <= x"0" ;
                    end if;
                    aux_int <= CONV_INTEGER(resultado);
                    case(aux_int) is      -- case do decodificador.
							  when 0 => DISPLAY <= "11111111111111100000000011100100001";
                       when 1 => DISPLAY <= "11111111111111111100100011100100001";
                       when 2 => DISPLAY <= "11111111111111010010000011100100001";
                       when 3 => DISPLAY <= "11111111111111011000000011100100001";
                       when 4 => DISPLAY <= "11111111111111001100100011100100001";
                       when 5 => DISPLAY <= "11111111111111001001000011100100001";
                       when 6 => DISPLAY <= "11111111111111000001000011100100001";
                       when 7 => DISPLAY <= "11111111111111011100000011100100001";
                       when 8 => DISPLAY <= "11111111111111000000000011100100001";
                       when 9 => DISPLAY <= "11111111111111001100000011100100001";
                       when others => NULL;
                    end case;

				when JUMP =>

                    DISPLAY <= "11111111111111111111100011001110001";

				when LOAD =>
                    aux <= memoria(endereco);
                    aux_int_A  <= CONV_INTEGER(aux(7 downto 4));
                    aux_int_B  <= CONV_INTEGER(aux(3 downto 0));

					case(aux_int_A) is      -- case do decodificador
																																
							   when 0 => DISPLAY <= "11111111111111111111101000011000111";
				            when 1 => DISPLAY <= "11111111111111111111101000011000111";
				            when 2 => DISPLAY <= "11111111111111111111101000011000111";
				            when 3 => DISPLAY <= "11111111111111111111101000011000111";
				            when 4 => DISPLAY <= "11111111111111111111101000011000111";
				            when 5 => DISPLAY <= "11111111111111111111101000011000111";
				            when 6 => DISPLAY <= "11111111111111111111101000011000111";
				            when 7 => DISPLAY <= "11111111111111111111101000011000111";
				            when 8 => DISPLAY <= "11111111111111111111101000011000111";
				            when 9 => DISPLAY <= "11111111111111111111101000011000111";
				            when others => NULL;
					 end case;

					 case(aux_int_B) is      -- case do decodificador.
            			       when 0 => DISPLAY <=    "11111111111111111111101000011000111";
					 				 when 1 => DISPLAY <= "11111111111111111111101000011000111";
					 			    when 2 => DISPLAY <= "11111111111111111111101000011000111";
					 				 when 3 => DISPLAY <= "11111111111111111111101000011000111";
									 when 4 => DISPLAY <= "11111111111111111111101000011000111";
									 when 5 => DISPLAY <= "11111111111111111111101000011000111";
									 when 6 => DISPLAY <= "11111111111111111111101000011000111";
									 when 7 => DISPLAY <= "11111111111111111111101000011000111";
									 when 8 => DISPLAY <= "11111111111111111111101000011000111";
									 when 9 => DISPLAY <= "11111111111111111111101000011000111";
					 when others => NULL;
					 end case;
		
				when STORE =>
					memoria(endereco) <= NUMERO;
					endereco <= endereco + 1;
					--mais perto de SE  --11111111111111111111100001100010110
               DISPLAY <= "11111111111111111111100001100010010";

				when MOV =>
					register_aux <= registrador(14);
					registrador(14) <=  registrador(15); --Altera o segundo valor da memoria pelo terceiro
					registrador(15) <= register_aux;
               DISPLAY <= "11111111111111111111110000001001000";
				when others => NULL;
			end case;
	end process;
end CPU;
