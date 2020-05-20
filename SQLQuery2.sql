CREATE PROCEDURE sp_select  
      
    @Username varchar(50),  
    @Password varchar(50)  
      
AS  
BEGIN  
    Declare @Count int  
      
    Select @Count = COUNT(Username)  
    from tbl_data where [Username] =@Username and [Password] =@Password  
      
    If (@Count = 1)  
    Begin   
     Select 1 as codereturn  
    End  
    Else  
    Begin  
        Select -1 as codereturn  
    End  
      
      
END 