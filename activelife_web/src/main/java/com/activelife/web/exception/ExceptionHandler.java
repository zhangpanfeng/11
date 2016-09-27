package com.activelife.web.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import com.activelife.common.exception.BusinessException;
import com.activelife.common.exception.ErrorMessage;
import com.activelife.common.vo.ClientMessage;

public class ExceptionHandler implements HandlerExceptionResolver {

    public ModelAndView resolveException(HttpServletRequest req, HttpServletResponse rep, Object obj, Exception e) {
        BusinessException exception = (BusinessException) e;
        ClientMessage clientMessage = new ClientMessage();
        clientMessage.setStatusCode(exception.getErrorCode());
        clientMessage.setMessage(ErrorMessage.getClientMessage(exception.getErrorCode()));
        ModelAndView modelView = new ModelAndView("error");
        modelView.addObject("clientMessage", clientMessage);

        return modelView;
    }
}
