package com.hiyamu.exception;

//아이디가 존재하지 않는경우 에러 발생
public class IdNotExistException extends NullPointerException
{
    public IdNotExistException()
    {
        super();
    }
    IdNotExistException(String message)
    {
        super(message);
    }
}
