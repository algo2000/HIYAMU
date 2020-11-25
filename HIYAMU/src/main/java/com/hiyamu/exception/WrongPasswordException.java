package com.hiyamu.exception;

//비밀번호가 틀린경우 예외 발생
public class WrongPasswordException extends NullPointerException
{
    public WrongPasswordException()
    {
        super();
    }
    WrongPasswordException(String message)
    {
        super(message);
    }
}
