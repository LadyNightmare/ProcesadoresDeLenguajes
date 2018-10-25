%%
%standalone
%{
	public int imag = 0;
	public int vid = 0;
	public int aud = 0;
	public int coin = 0;
	public int star = 0;
%}

%state DEFVAR

Normal = [^;\n\=\"\\\$]

%%
<YYINITIAL>{

[a-zA-Z0-9_]+.((jpg)|(JPG)|(png)|(PNG)|(svg)|(SVG))\=     {
					System.out.println(yytext());
                                     imag+=1;
                              }
[a-zA-Z0-9_]+.((ovg)|(OVG)|(mp4)|(MP4)|(avi)|(AVI))\=     {
					System.out.println(yytext());
                                    vid+=1;
                              }
                              
[a-zA-Z0-9_]+.((ogg)|(OGG)|(mp3)|(MP3)|(wav)|(WAV)|(flac)|(FLAC))\=                           {
					System.out.println(yytext());
                                   aud+=1;
                                   
                              }
                              
Valued image seal.svg/=                             {
					coin+=1;
                                    
                              }
Featured pictures/=                             {
					star+=1;
                                    
                              }
.                             {
                                    
                              }
                              
}
<DEFVAR>{


({Normal}|\=)+                { 
                                   
                              }
                              
\$[a-zA-Z_][a-zA-Z0-9_]*      {
                                    
                              }
                              
                              
[\n;]                         {
                                   
                              }

\"                            {
                                   
                              }
\\.                           {
                                   
                              }

}

