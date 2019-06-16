(defun collect()
    (format t ))

(defun mainloop()
    (format t
    "Calculadora
    1 - Soma
    2 - Subtração
    3 - Multiplicação
    4 - Divisão
    5 - Potência
    6 - Radiciação
    7 - Logaritmo
    0 - Sair
    Escolha: ")

    (setq *select* (read))

    (case *select* 
        (1 (format t "soma")
        (mainloop))
        (2 (format t "subtração")
        (mainloop))
        (3 (format t "multiplicação")
        (mainloop))
        (4 (format t "divisao")
        (mainloop))
        (5 (format t "potencia")
        (mainloop))
        (6 (format t "raiz")
        (mainloop))
        (7 (format t "log")
        (mainloop))

        (0 (format t "tchau"))

        (otherwise (format t "invalido")
        (mainloop))))
    
(mainloop)