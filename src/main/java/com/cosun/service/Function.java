package com.cosun.service;

public interface Function<T, E> {

    public T callback(E e);

}
