module test (clk,reset,A,B,opcode,C,ZF,CF,SF);

input clk,reset;
input [3:0] A,B;
input [2:0] opcode;

output reg ZF,CF,SF;
output reg [3:0] C;

reg current_state, next_state;
parameter S0=0,S1=1;
integer x=-1;
reg y;
reg [3:0] temp;			
parameter [2:0]op_add=3'b100,
			   op_sub=3'b010, 
			   op_nand = 3'b011, 
			   op_xor=3'b001,
			   op_reset=3'b000;
			   			   

			   
always @(posedge clk, posedge reset)
begin
	if (reset==1)
		begin
			current_state=S0;
			next_state=S0;
			C=0000;
			ZF=0;
			CF=0;
			SF=0;
			x=-1;
		end							//Hard reset
		
	else if (opcode==op_add)				//ADD
	begin
		x=x+1;
		current_state=next_state;
		
		case(current_state)
		S0: if (A[x]==0 && B[x]==0)
		begin
            next_state=S0;
            C[x]=0;
            if (x==3)
            begin
			CF=0;
			end
            if(C[3])
			begin
				SF=1;
			end
			else
			begin
				SF=0;
			end
			if(C==0000)
			begin
				ZF=1;
			end
			else
			begin
				ZF=0;
			end
        end
        else if (A[x]==1 && B[x]==1)
        begin
			next_state=S1;
            C[x]=0;
            if (x==3)
            begin
			CF=1;
			end
            if(C[3])
			begin
				SF=1;
			end
			else
			begin
				SF=0;
			end
			if(C==0000)
			begin
				ZF=1;
			end
			else
			begin
				ZF=0;
			end
        end
        else if (A[x]==0 && B[x]==1)
        begin
            next_state=S0;
            if (x==3)
            begin
			CF=0;
			end
            C[x]=1;
            if(C[3])
			begin
				SF=1;
			end
			else
			begin
				SF=0;
			end
			if(C==0000)
			begin
				ZF=1;
			end
			else
			begin
				ZF=0;
			end
        end
        else
        begin
            next_state=S0;
            if (x==3)
            begin
			CF=0;
			end
            C[x]=1;
            if(C[3])
			begin
				SF=1;
			end
			else
			begin
				SF=0;
			end
			if(C==0000)
			begin
				ZF=1;
			end
			else
			begin
				ZF=0;
			end
        end
        S1:if (A[x]==0 && B[x]==0)
        begin
            next_state=S0;
            if (x==3)
            begin
			CF=0;
			end
            C[x]=1;
            if(C[3])
			begin
				SF=1;
			end
			else
			begin
				SF=0;
			end
			if(C==0000)
			begin
				ZF=1;
			end
			else
			begin
				ZF=0;
			end
        end
        else if (A[x]==1 && B[x]==1)
        begin
            next_state=S1;
            if (x==3)
            begin
			CF=1;
			end
            C[x]=1;
            if(C[3])
			begin
				SF=1;
			end
			else
			begin
				SF=0;
			end
			if(C==0000)
			begin
				ZF=1;
			end
			else
			begin
				ZF=0;
			end
        end
        else if (A[x]==0 && B[x]==1)
        begin
            next_state=S1;
            if (x==3)
            begin
			CF=1;
			end
            C[x]=0;
            if(C[3])
			begin
				SF=1;
			end
			else
			begin
				SF=0;
			end
			if(C==0000)
			begin
				ZF=1;
			end
			else
			begin
				ZF=0;
			end
        end
        else
        begin
            next_state=S1;
            if (x==3)
            begin
			CF=1;
			end
            C[x]=0;
            if(C[3])
			begin
				SF=1;
			end
			else
			begin
				SF=0;
			end
			if(C==0000)
			begin
				ZF=1;
			end
			else
			begin
				ZF=0;
			end
        end
        endcase
		
	end						//ADD END
	
	else if (opcode==op_xor)			//XOR
    begin
		x=x+1;
		current_state= next_state;
		
		case(current_state)
		S0: 
		begin
			C[x] = (A[x] + B[x]) & (~(A[x] + ~B[x]));
			next_state=S1;
			if(C[3])
			begin
				SF=1;
			end
			else
			begin
				SF=0;
			end
			if(C==0000)
			begin
				ZF=1;
			end
			else
			begin
				ZF=0;
			end
		end
		S1:
		begin
			C[x] = (A[x] + B[x]) | ~(A[x] | ~B[x]);
			next_state=S0;
			if(C[3])
			begin
				SF=1;
			end
			else
			begin
				SF=0;
			end
			if(C==0000)
			begin
				ZF=1;
			end
			else
			begin
				ZF=0;
			end
		end
		endcase
    end						//XOR END
    
    else if (opcode==op_nand)		//NAND
    begin
		x=x+1;
		current_state= next_state;		
		case(current_state)
		S0: 
		begin
			C[x] = ~(A[x] & B[x]);
			next_state=S1;
			if(C[3])
			begin
				SF=1;
			end
			else
			begin
				SF=0;
			end
			if(C==0000)
			begin
				ZF=1;
			end
			else
			begin
				ZF=0;
			end
		end
		S1:
		begin
			C[x] = ~(A[x] & B[x]);
			next_state=S0;
			if(C[3])
			begin
				SF=1;
			end
			else
			begin
				SF=0;
			end
			if(C==0000)
			begin
				ZF=1;
			end
			else
			begin
				ZF=0;
			end
		end
		endcase
	end    				//NAND END
	
	else if (opcode==op_reset)			//RESET
    begin
		x=-1;
		current_state= S0;
	end								//RESET END
			
	
	else if (opcode==op_sub)		//SUB
    begin
		x=x+1;
		current_state= next_state;
		
		case(current_state)
		S0: 
		begin
			if (A[3]==1 && B[3]==0)
			begin
				if (x==3 && y==1)
				begin
					C[3]=1;
					CF=1;
				end
				else if (x==3 && y==0)
				begin
					C[3]=1;
					CF=0;
				end
				else
				begin
					{y,C[x]} = A[x] + B[x]+y;
				end
				
			end	
			
			else if (A[3]==0 && B[3]==1)
			begin
				if (x==3 && y==1)
				begin
					C[3]=0;
					CF=1;
				end
				else if (x==3 && y==0)
				begin
					C[3]=0;
					CF=0;
				end
				else
				begin
					{y,C[x]} = A[x] + B[x]+y;
				end
				
			end	
			
			else if (A[3]==0 && B[3]==0)
			begin
				if (A>B)
				begin
					if (x==3 && y==1)
					begin
						C[3]=0;
						CF=0;
					end
					else if (x==3 && y==0)
					begin
						C[3]=0;
						CF=0;
					end
					else
					begin
						temp=~B+1;
						{y,C[x]} = A[x] + temp[x]+y;
					end	
				end
				else
				begin
					if (x==3 && y==1)
					begin
						C[3]=1;
						CF=0;
					end
					else if (x==3 && y==0)
					begin
						C[3]=1;
						CF=0;
					end
					else
					begin
						temp=~A+1;
						{y,C[x]} = B[x] + temp[x]+y;
					end	
				end
				
			end	
		
			else
			begin
				if (A>B)
				begin
					if (x==3 && y==1)
					begin
						C[3]=1;
						CF=0;
					end
					else if (x==3 && y==0)
					begin
						C[3]=1;
						CF=0;
					end
					else
					begin
						temp=~B+1;
						{y,C[x]} = A[x] + temp[x]+y;
					end	
				end
				else
				begin
					if (x==3 && y==1)
					begin
						C[3]=0;
						CF=0;
					end
					else if (x==3 && y==0)
					begin
						C[3]=0;
						CF=0;
					end
					else
					begin
						temp=~A+1;
						{y,C[x]} = B[x] + temp[x]+y;
					end	
				end
				
			end	
			next_state=S1;
			if(C[3])
				begin
					SF=1;
				end
				else
				begin
					SF=0;
				end
				if(C==0000)
				begin
					ZF=1;
				end
				else
				begin
					ZF=0;
				end
			
		end
		S1:
		begin
			if (A[3]==1 && B[3]==0)
			begin
				if (x==3 && y==1)
				begin
					C[3]=1;
					CF=1;
				end
				else if (x==3 && y==0)
				begin
					C[3]=1;
					CF=0;
				end
				else
				begin
					{y,C[x]} = A[x] + B[x]+y;
				end
			end	
			
			else if (A[3]==0 && B[3]==1)
			begin
				if (x==3 && y==1)
				begin
					C[3]=0;
					CF=1;
				end
				else if (x==3 && y==0)
				begin
					C[3]=0;
					CF=0;
				end
				else
				begin
					{y,C[x]} = A[x] + B[x]+y;
				end
				
			end	
			
			else if (A[3]==0 && B[3]==0)
			begin
				if (A>B)
				begin
					if (x==3 && y==1)
					begin
						C[3]=0;
						CF=0;
					end
					else if (x==3 && y==0)
					begin
						C[3]=0;
						CF=0;
					end
					else
					begin
						temp=~B+1;
						{y,C[x]} = A[x] + temp[x]+y;
					end	
				end
				else
				begin
					if (x==3 && y==1)
					begin
						C[3]=1;
						CF=0;
					end
					else if (x==3 && y==0)
					begin
						C[3]=1;
						CF=0;
					end
					else
					begin
						temp=~A+1;
						{y,C[x]} = B[x] + temp[x]+y;
					end	
				end
				
			end	
			
			
			else
			begin
				if (A>B)
				begin
					if (x==3 && y==1)
					begin
						C[3]=1;
						CF=0;
					end
					else if (x==3 && y==0)
					begin
						C[3]=1;
						CF=0;
					end
					else
					begin
						temp=~B+1;
						{y,C[x]} = A[x] + temp[x]+y;
					end	
				end
				else
				begin
					if (x==3 && y==1)
					begin
						C[3]=0;
						CF=0;
					end
					else if (x==3 && y==0)
					begin
						C[3]=0;
						CF=0;
					end
					else
					begin
						temp=~A+1;
						{y,C[x]} = B[x] + temp[x]+y;
					end	
				end
				
			end	
			next_state=S0;
			if(C[3])
				begin
					SF=1;
				end
				else
				begin
					SF=0;
				end
				if(C==0000)
				begin
					ZF=1;
				end
				else
				begin
					ZF=0;
				end
		end
		endcase
    end						//Sub END
			
		
			
		
		
		
end
endmodule
