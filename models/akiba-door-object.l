;;
;;
;; this file is automatically generated from euslisp+euslib
;;
;;
(defclass akiba-door-object
  :super cascaded-link
  :slots (sensors))
(defmethod akiba-door-object
  (:init
   (&rest args &key (name "akiba-door") (pos (float-vector 0 0 0)) (rot (unit-matrix 3)) &allow-other-keys)
   (let (c bc
         blink0 blink1 blink2 blink3
         joint0 joint1 joint2 joint3
        
         )
     (send-super* :init :name name args)

     ;; definition of link

     ;; definition of :bodyset264096564
     (setq bc (list
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -10.0 -475.0 2400.0) (float-vector -20.0 -475.0 2400.0) (float-vector -20.0 -485.0 2400.0) (float-vector -10.0 -485.0 2400.0)))
         (instance face :init :vertices (list (float-vector -20.0 -475.0 0.0) (float-vector -10.0 -475.0 0.0) (float-vector -10.0 -485.0 0.0) (float-vector -20.0 -485.0 0.0)))
         (instance face :init :vertices (list (float-vector -10.0 -475.0 2400.0) (float-vector -10.0 -475.0 0.0) (float-vector -20.0 -475.0 0.0) (float-vector -20.0 -475.0 2400.0)))
         (instance face :init :vertices (list (float-vector -10.0 -485.0 2400.0) (float-vector -10.0 -485.0 0.0) (float-vector -10.0 -475.0 0.0) (float-vector -10.0 -475.0 2400.0)))
         (instance face :init :vertices (list (float-vector -20.0 -485.0 2400.0) (float-vector -20.0 -485.0 0.0) (float-vector -10.0 -485.0 0.0) (float-vector -10.0 -485.0 2400.0)))
         (instance face :init :vertices (list (float-vector -20.0 -475.0 2400.0) (float-vector -20.0 -475.0 0.0) (float-vector -20.0 -485.0 0.0) (float-vector -20.0 -485.0 2400.0)))
       ))
       ))
     (dolist (b (cdr bc)) (send (car bc) :assoc b))
     (send (elt bc 0) :set-color :ivory1)
     (setq blink0 (instance bodyset-link :init (make-cascoords) :bodies bc :name :bodyset264096564 :weight 1 :centroid (float-vector 0.0 0.0 0.0) :inertia-tensor #2f((1.0 0.0 0.0) (0.0 1.0 0.0) (0.0 0.0 1.0))))

     ;; definition of :bodyset264130660
     (setq bc (list
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 15.0 975.0 2400.0) (float-vector -15.0 975.0 2400.0) (float-vector -15.0 -15.0 2400.0) (float-vector 15.0 -15.0 2400.0)))
         (instance face :init :vertices (list (float-vector -15.0 975.0 0.0) (float-vector 15.0 975.0 0.0) (float-vector 15.0 -15.0 0.0) (float-vector -15.0 -15.0 0.0)))
         (instance face :init :vertices (list (float-vector 15.0 975.0 2400.0) (float-vector 15.0 975.0 0.0) (float-vector -15.0 975.0 0.0) (float-vector -15.0 975.0 2400.0)))
         (instance face :init :vertices (list (float-vector 15.0 -15.0 2400.0) (float-vector 15.0 -15.0 0.0) (float-vector 15.0 975.0 0.0) (float-vector 15.0 975.0 2400.0)))
         (instance face :init :vertices (list (float-vector -15.0 -15.0 2400.0) (float-vector -15.0 -15.0 0.0) (float-vector 15.0 -15.0 0.0) (float-vector 15.0 -15.0 2400.0)))
         (instance face :init :vertices (list (float-vector -15.0 975.0 2400.0) (float-vector -15.0 975.0 0.0) (float-vector -15.0 -15.0 0.0) (float-vector -15.0 -15.0 2400.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 25.0 985.0 2400.0) (float-vector 15.0 985.0 2400.0) (float-vector 15.0 965.0 2400.0) (float-vector 25.0 965.0 2400.0)))
         (instance face :init :vertices (list (float-vector 15.0 985.0 0.0) (float-vector 25.0 985.0 0.0) (float-vector 25.0 965.0 0.0) (float-vector 15.0 965.0 0.0)))
         (instance face :init :vertices (list (float-vector 25.0 985.0 2400.0) (float-vector 25.0 985.0 0.0) (float-vector 15.0 985.0 0.0) (float-vector 15.0 985.0 2400.0)))
         (instance face :init :vertices (list (float-vector 25.0 965.0 2400.0) (float-vector 25.0 965.0 0.0) (float-vector 25.0 985.0 0.0) (float-vector 25.0 985.0 2400.0)))
         (instance face :init :vertices (list (float-vector 15.0 965.0 2400.0) (float-vector 15.0 965.0 0.0) (float-vector 25.0 965.0 0.0) (float-vector 25.0 965.0 2400.0)))
         (instance face :init :vertices (list (float-vector 15.0 985.0 2400.0) (float-vector 15.0 985.0 0.0) (float-vector 15.0 965.0 0.0) (float-vector 15.0 965.0 2400.0)))
       ))
       ))
     (dolist (b (cdr bc)) (send (car bc) :assoc b))
     (send (elt bc 0) :set-color :ivory1)
     (send (elt bc 1) :set-color :ivory1)
     (setq blink1 (instance bodyset-link :init (make-cascoords) :bodies bc :name :bodyset264130660 :weight 1 :centroid (float-vector 0.0 0.0 0.0) :inertia-tensor #2f((1.0 0.0 0.0) (0.0 1.0 0.0) (0.0 0.0 1.0))))

     ;; definition of :bodyset264490788
     (setq bc (list
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -4.99999 -10.0 -17.3204) (float-vector -4.99999 0.0 -20.0) (float-vector -4.99999 10.0 -17.3206) (float-vector -5.0 17.3205 -10.0) (float-vector -5.0 20.0 0.0) (float-vector -5.0 17.3205 10.0) (float-vector -5.00001 10.0 17.3206) (float-vector -5.00001 0.0 20.0) (float-vector -5.00001 -10.0 17.3206) (float-vector -5.0 -17.3205 10.0) (float-vector -5.0 -20.0 0.0) (float-vector -5.0 -17.3205 -10.0)))
         (instance face :init :vertices (list (float-vector -20.0 0.0 -20.0) (float-vector -20.0 -10.0 -17.3206) (float-vector -20.0 -17.3205 -10.0) (float-vector -20.0 -20.0 0.0) (float-vector -20.0 -17.3205 10.0) (float-vector -20.0 -10.0 17.3206) (float-vector -20.0 0.0 20.0) (float-vector -20.0 10.0 17.3206) (float-vector -20.0 17.3205 10.0) (float-vector -20.0 20.0 0.0) (float-vector -20.0 17.3205 -10.0) (float-vector -20.0 10.0 -17.3206)))
         (instance face :init :vertices (list (float-vector -4.99999 -10.0 -17.3204) (float-vector -20.0 -10.0 -17.3206) (float-vector -20.0 0.0 -20.0) (float-vector -4.99999 0.0 -20.0)))
         (instance face :init :vertices (list (float-vector -5.0 -17.3205 -10.0) (float-vector -20.0 -17.3205 -10.0) (float-vector -20.0 -10.0 -17.3206) (float-vector -4.99999 -10.0 -17.3204)))
         (instance face :init :vertices (list (float-vector -5.0 -20.0 0.0) (float-vector -20.0 -20.0 0.0) (float-vector -20.0 -17.3205 -10.0) (float-vector -5.0 -17.3205 -10.0)))
         (instance face :init :vertices (list (float-vector -5.0 -17.3205 10.0) (float-vector -20.0 -17.3205 10.0) (float-vector -20.0 -20.0 0.0) (float-vector -5.0 -20.0 0.0)))
         (instance face :init :vertices (list (float-vector -5.00001 -10.0 17.3206) (float-vector -20.0 -10.0 17.3206) (float-vector -20.0 -17.3205 10.0) (float-vector -5.0 -17.3205 10.0)))
         (instance face :init :vertices (list (float-vector -5.00001 0.0 20.0) (float-vector -20.0 0.0 20.0) (float-vector -20.0 -10.0 17.3206) (float-vector -5.00001 -10.0 17.3206)))
         (instance face :init :vertices (list (float-vector -5.00001 10.0 17.3206) (float-vector -20.0 10.0 17.3206) (float-vector -20.0 0.0 20.0) (float-vector -5.00001 0.0 20.0)))
         (instance face :init :vertices (list (float-vector -5.0 17.3205 10.0) (float-vector -20.0 17.3205 10.0) (float-vector -20.0 10.0 17.3206) (float-vector -5.00001 10.0 17.3206)))
         (instance face :init :vertices (list (float-vector -5.0 20.0 0.0) (float-vector -20.0 20.0 0.0) (float-vector -20.0 17.3205 10.0) (float-vector -5.0 17.3205 10.0)))
         (instance face :init :vertices (list (float-vector -5.0 17.3205 -10.0) (float-vector -20.0 17.3205 -10.0) (float-vector -20.0 20.0 0.0) (float-vector -5.0 20.0 0.0)))
         (instance face :init :vertices (list (float-vector -4.99999 10.0 -17.3206) (float-vector -20.0 10.0 -17.3206) (float-vector -20.0 17.3205 -10.0) (float-vector -5.0 17.3205 -10.0)))
         (instance face :init :vertices (list (float-vector -4.99999 0.0 -20.0) (float-vector -20.0 0.0 -20.0) (float-vector -20.0 10.0 -17.3206) (float-vector -4.99999 10.0 -17.3206)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 20.0 5.0 15.0) (float-vector -20.0 5.0 15.0) (float-vector -20.0 -5.0 15.0) (float-vector 20.0 -5.0 15.0)))
         (instance face :init :vertices (list (float-vector -20.0 5.0 -15.0) (float-vector 20.0 5.0 -15.0) (float-vector 20.0 -5.0 -15.0) (float-vector -20.0 -5.0 -15.0)))
         (instance face :init :vertices (list (float-vector 20.0 5.0 15.0) (float-vector 20.0 5.0 -15.0) (float-vector -20.0 5.0 -15.0) (float-vector -20.0 5.0 15.0)))
         (instance face :init :vertices (list (float-vector 20.0 -5.0 15.0) (float-vector 20.0 -5.0 -15.0) (float-vector 20.0 5.0 -15.0) (float-vector 20.0 5.0 15.0)))
         (instance face :init :vertices (list (float-vector -20.0 -5.0 15.0) (float-vector -20.0 -5.0 -15.0) (float-vector 20.0 -5.0 -15.0) (float-vector 20.0 -5.0 15.0)))
         (instance face :init :vertices (list (float-vector -20.0 5.0 15.0) (float-vector -20.0 5.0 -15.0) (float-vector -20.0 -5.0 -15.0) (float-vector -20.0 -5.0 15.0)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -65.0 -10.0 17.3206) (float-vector -65.0 0.0 20.0) (float-vector -65.0 10.0 17.3206) (float-vector -65.0 17.3205 10.0) (float-vector -65.0 20.0 0.0) (float-vector -65.0 17.3205 -10.0) (float-vector -65.0 10.0 -17.3206) (float-vector -65.0 0.0 -20.0) (float-vector -65.0 -10.0 -17.3206) (float-vector -65.0 -17.3205 -10.0) (float-vector -65.0 -20.0 0.0) (float-vector -65.0 -17.3205 10.0)))
         (instance face :init :vertices (list (float-vector -50.0 0.0 20.0) (float-vector -50.0 -10.0 17.3206) (float-vector -50.0 -17.3205 10.0) (float-vector -50.0 -20.0 0.0) (float-vector -50.0 -17.3205 -10.0) (float-vector -50.0 -10.0 -17.3206) (float-vector -50.0 0.0 -20.0) (float-vector -50.0 10.0 -17.3206) (float-vector -50.0 17.3205 -10.0) (float-vector -50.0 20.0 0.0) (float-vector -50.0 17.3205 10.0) (float-vector -50.0 10.0 17.3206)))
         (instance face :init :vertices (list (float-vector -65.0 -10.0 17.3206) (float-vector -50.0 -10.0 17.3206) (float-vector -50.0 0.0 20.0) (float-vector -65.0 0.0 20.0)))
         (instance face :init :vertices (list (float-vector -65.0 -17.3205 10.0) (float-vector -50.0 -17.3205 10.0) (float-vector -50.0 -10.0 17.3206) (float-vector -65.0 -10.0 17.3206)))
         (instance face :init :vertices (list (float-vector -65.0 -20.0 0.0) (float-vector -50.0 -20.0 0.0) (float-vector -50.0 -17.3205 10.0) (float-vector -65.0 -17.3205 10.0)))
         (instance face :init :vertices (list (float-vector -65.0 -17.3205 -10.0) (float-vector -50.0 -17.3205 -10.0) (float-vector -50.0 -20.0 0.0) (float-vector -65.0 -20.0 0.0)))
         (instance face :init :vertices (list (float-vector -65.0 -10.0 -17.3206) (float-vector -50.0 -10.0 -17.3206) (float-vector -50.0 -17.3205 -10.0) (float-vector -65.0 -17.3205 -10.0)))
         (instance face :init :vertices (list (float-vector -65.0 0.0 -20.0) (float-vector -50.0 0.0 -20.0) (float-vector -50.0 -10.0 -17.3206) (float-vector -65.0 -10.0 -17.3206)))
         (instance face :init :vertices (list (float-vector -65.0 10.0 -17.3206) (float-vector -50.0 10.0 -17.3206) (float-vector -50.0 0.0 -20.0) (float-vector -65.0 0.0 -20.0)))
         (instance face :init :vertices (list (float-vector -65.0 17.3205 -10.0) (float-vector -50.0 17.3205 -10.0) (float-vector -50.0 10.0 -17.3206) (float-vector -65.0 10.0 -17.3206)))
         (instance face :init :vertices (list (float-vector -65.0 20.0 0.0) (float-vector -50.0 20.0 0.0) (float-vector -50.0 17.3205 -10.0) (float-vector -65.0 17.3205 -10.0)))
         (instance face :init :vertices (list (float-vector -65.0 17.3205 10.0) (float-vector -50.0 17.3205 10.0) (float-vector -50.0 20.0 0.0) (float-vector -65.0 20.0 0.0)))
         (instance face :init :vertices (list (float-vector -65.0 10.0 17.3206) (float-vector -50.0 10.0 17.3206) (float-vector -50.0 17.3205 10.0) (float-vector -65.0 17.3205 10.0)))
         (instance face :init :vertices (list (float-vector -65.0 0.0 20.0) (float-vector -50.0 0.0 20.0) (float-vector -50.0 10.0 17.3206) (float-vector -65.0 10.0 17.3206)))
       ))
       ))
     (dolist (b (cdr bc)) (send (car bc) :assoc b))
     (send (elt bc 0) :set-color :dimgray)
     (send (elt bc 1) :set-color :dimgray)
     (send (elt bc 2) :set-color :dimgray)
     (setq blink3 (instance bodyset-link :init (make-cascoords) :bodies bc :name :bodyset264490788 :weight 1 :centroid (float-vector 0.0 0.0 0.0) :inertia-tensor #2f((1.0 0.0 0.0) (0.0 1.0 0.0) (0.0 0.0 1.0))))

     ;; definition of :bodyset264388596
     (setq bc (list
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 15.0 -5.0 -8.66022) (float-vector 15.0 0.0 -9.99994) (float-vector 15.0 5.0 -8.66022) (float-vector 15.0 8.66025 -4.99994) (float-vector 15.0 10.0 6.103516e-05) (float-vector 15.0 8.66025 5.00006) (float-vector 15.0 5.0 8.66028) (float-vector 15.0 0.0 10.0001) (float-vector 15.0 -5.0 8.66028) (float-vector 15.0 -8.66025 5.00006) (float-vector 15.0 -10.0 6.103516e-05) (float-vector 15.0 -8.66025 -4.99994)))
         (instance face :init :vertices (list (float-vector -80.0 0.0 -10.0) (float-vector -80.0 -5.0 -8.66028) (float-vector -80.0 -8.66025 -5.0) (float-vector -80.0 -10.0 0.0) (float-vector -80.0 -8.66025 5.0) (float-vector -80.0 -5.0 8.66028) (float-vector -80.0 0.0 10.0) (float-vector -80.0 5.0 8.66028) (float-vector -80.0 8.66025 5.0) (float-vector -80.0 10.0 0.0) (float-vector -80.0 8.66025 -5.0) (float-vector -80.0 5.0 -8.66028)))
         (instance face :init :vertices (list (float-vector 15.0 -5.0 -8.66022) (float-vector -80.0 -5.0 -8.66028) (float-vector -80.0 0.0 -10.0) (float-vector 15.0 0.0 -9.99994)))
         (instance face :init :vertices (list (float-vector 15.0 -8.66025 -4.99994) (float-vector -80.0 -8.66025 -5.0) (float-vector -80.0 -5.0 -8.66028) (float-vector 15.0 -5.0 -8.66022)))
         (instance face :init :vertices (list (float-vector 15.0 -10.0 6.103516e-05) (float-vector -80.0 -10.0 0.0) (float-vector -80.0 -8.66025 -5.0) (float-vector 15.0 -8.66025 -4.99994)))
         (instance face :init :vertices (list (float-vector 15.0 -8.66025 5.00006) (float-vector -80.0 -8.66025 5.0) (float-vector -80.0 -10.0 0.0) (float-vector 15.0 -10.0 6.103516e-05)))
         (instance face :init :vertices (list (float-vector 15.0 -5.0 8.66028) (float-vector -80.0 -5.0 8.66028) (float-vector -80.0 -8.66025 5.0) (float-vector 15.0 -8.66025 5.00006)))
         (instance face :init :vertices (list (float-vector 15.0 0.0 10.0001) (float-vector -80.0 0.0 10.0) (float-vector -80.0 -5.0 8.66028) (float-vector 15.0 -5.0 8.66028)))
         (instance face :init :vertices (list (float-vector 15.0 5.0 8.66028) (float-vector -80.0 5.0 8.66028) (float-vector -80.0 0.0 10.0) (float-vector 15.0 0.0 10.0001)))
         (instance face :init :vertices (list (float-vector 15.0 8.66025 5.00006) (float-vector -80.0 8.66025 5.0) (float-vector -80.0 5.0 8.66028) (float-vector 15.0 5.0 8.66028)))
         (instance face :init :vertices (list (float-vector 15.0 10.0 6.103516e-05) (float-vector -80.0 10.0 0.0) (float-vector -80.0 8.66025 5.0) (float-vector 15.0 8.66025 5.00006)))
         (instance face :init :vertices (list (float-vector 15.0 8.66025 -4.99994) (float-vector -80.0 8.66025 -5.0) (float-vector -80.0 10.0 0.0) (float-vector 15.0 10.0 6.103516e-05)))
         (instance face :init :vertices (list (float-vector 15.0 5.0 -8.66022) (float-vector -80.0 5.0 -8.66028) (float-vector -80.0 8.66025 -5.0) (float-vector 15.0 8.66025 -4.99994)))
         (instance face :init :vertices (list (float-vector 15.0 0.0 -9.99994) (float-vector -80.0 0.0 -10.0) (float-vector -80.0 5.0 -8.66028) (float-vector 15.0 5.0 -8.66022)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector 15.0 10.0 7.5) (float-vector -15.0 10.0 7.5) (float-vector -15.0 -110.0 7.5) (float-vector 15.0 -110.0 7.5)))
         (instance face :init :vertices (list (float-vector -15.0 10.0 -7.5) (float-vector 15.0 10.0 -7.5) (float-vector 15.0 -110.0 -7.5) (float-vector -15.0 -110.0 -7.5)))
         (instance face :init :vertices (list (float-vector 15.0 10.0 7.5) (float-vector 15.0 10.0 -7.5) (float-vector -15.0 10.0 -7.5) (float-vector -15.0 10.0 7.5)))
         (instance face :init :vertices (list (float-vector 15.0 -110.0 7.5) (float-vector 15.0 -110.0 -7.5) (float-vector 15.0 10.0 -7.5) (float-vector 15.0 10.0 7.5)))
         (instance face :init :vertices (list (float-vector -15.0 -110.0 7.5) (float-vector -15.0 -110.0 -7.5) (float-vector 15.0 -110.0 -7.5) (float-vector 15.0 -110.0 7.5)))
         (instance face :init :vertices (list (float-vector -15.0 10.0 7.5) (float-vector -15.0 10.0 -7.5) (float-vector -15.0 -110.0 -7.5) (float-vector -15.0 -110.0 7.5)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -70.0 -12.5 -21.6506) (float-vector -70.0 0.0 -25.0) (float-vector -70.0 12.5 -21.6506) (float-vector -70.0 21.6506 -12.5) (float-vector -70.0 25.0 0.0) (float-vector -70.0 21.6506 12.5) (float-vector -70.0 12.5 21.6506) (float-vector -70.0 0.0 25.0) (float-vector -70.0 -12.5 21.6506) (float-vector -70.0 -21.6506 12.5) (float-vector -70.0 -25.0 0.0) (float-vector -70.0 -21.6506 -12.5)))
         (instance face :init :vertices (list (float-vector -80.0 0.0 -25.0) (float-vector -80.0 -12.5 -21.6506) (float-vector -80.0 -21.6506 -12.5) (float-vector -80.0 -25.0 0.0) (float-vector -80.0 -21.6506 12.5) (float-vector -80.0 -12.5 21.6506) (float-vector -80.0 0.0 25.0) (float-vector -80.0 12.5 21.6506) (float-vector -80.0 21.6506 12.5) (float-vector -80.0 25.0 0.0) (float-vector -80.0 21.6506 -12.5) (float-vector -80.0 12.5 -21.6506)))
         (instance face :init :vertices (list (float-vector -70.0 -12.5 -21.6506) (float-vector -80.0 -12.5 -21.6506) (float-vector -80.0 0.0 -25.0) (float-vector -70.0 0.0 -25.0)))
         (instance face :init :vertices (list (float-vector -70.0 -21.6506 -12.5) (float-vector -80.0 -21.6506 -12.5) (float-vector -80.0 -12.5 -21.6506) (float-vector -70.0 -12.5 -21.6506)))
         (instance face :init :vertices (list (float-vector -70.0 -25.0 0.0) (float-vector -80.0 -25.0 0.0) (float-vector -80.0 -21.6506 -12.5) (float-vector -70.0 -21.6506 -12.5)))
         (instance face :init :vertices (list (float-vector -70.0 -21.6506 12.5) (float-vector -80.0 -21.6506 12.5) (float-vector -80.0 -25.0 0.0) (float-vector -70.0 -25.0 0.0)))
         (instance face :init :vertices (list (float-vector -70.0 -12.5 21.6506) (float-vector -80.0 -12.5 21.6506) (float-vector -80.0 -21.6506 12.5) (float-vector -70.0 -21.6506 12.5)))
         (instance face :init :vertices (list (float-vector -70.0 0.0 25.0) (float-vector -80.0 0.0 25.0) (float-vector -80.0 -12.5 21.6506) (float-vector -70.0 -12.5 21.6506)))
         (instance face :init :vertices (list (float-vector -70.0 12.5 21.6506) (float-vector -80.0 12.5 21.6506) (float-vector -80.0 0.0 25.0) (float-vector -70.0 0.0 25.0)))
         (instance face :init :vertices (list (float-vector -70.0 21.6506 12.5) (float-vector -80.0 21.6506 12.5) (float-vector -80.0 12.5 21.6506) (float-vector -70.0 12.5 21.6506)))
         (instance face :init :vertices (list (float-vector -70.0 25.0 0.0) (float-vector -80.0 25.0 0.0) (float-vector -80.0 21.6506 12.5) (float-vector -70.0 21.6506 12.5)))
         (instance face :init :vertices (list (float-vector -70.0 21.6506 -12.5) (float-vector -80.0 21.6506 -12.5) (float-vector -80.0 25.0 0.0) (float-vector -70.0 25.0 0.0)))
         (instance face :init :vertices (list (float-vector -70.0 12.5 -21.6506) (float-vector -80.0 12.5 -21.6506) (float-vector -80.0 21.6506 -12.5) (float-vector -70.0 21.6506 -12.5)))
         (instance face :init :vertices (list (float-vector -70.0 0.0 -25.0) (float-vector -80.0 0.0 -25.0) (float-vector -80.0 12.5 -21.6506) (float-vector -70.0 12.5 -21.6506)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -205.0 10.0 -7.49994) (float-vector -175.0 10.0 -7.49994) (float-vector -175.0 -110.0 -7.49994) (float-vector -205.0 -110.0 -7.49994)))
         (instance face :init :vertices (list (float-vector -175.0 10.0 7.50006) (float-vector -205.0 10.0 7.50006) (float-vector -205.0 -110.0 7.50006) (float-vector -175.0 -110.0 7.50006)))
         (instance face :init :vertices (list (float-vector -205.0 10.0 -7.49994) (float-vector -205.0 10.0 7.50006) (float-vector -175.0 10.0 7.50006) (float-vector -175.0 10.0 -7.49994)))
         (instance face :init :vertices (list (float-vector -205.0 -110.0 -7.49994) (float-vector -205.0 -110.0 7.50006) (float-vector -205.0 10.0 7.50006) (float-vector -205.0 10.0 -7.49994)))
         (instance face :init :vertices (list (float-vector -175.0 -110.0 -7.49994) (float-vector -175.0 -110.0 7.50006) (float-vector -205.0 -110.0 7.50006) (float-vector -205.0 -110.0 -7.49994)))
         (instance face :init :vertices (list (float-vector -175.0 10.0 -7.49994) (float-vector -175.0 10.0 7.50006) (float-vector -175.0 -110.0 7.50006) (float-vector -175.0 -110.0 -7.49994)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -205.0 -5.0 8.66028) (float-vector -205.0 0.0 10.0) (float-vector -205.0 5.0 8.66028) (float-vector -205.0 8.66025 5.0) (float-vector -205.0 10.0 0.0) (float-vector -205.0 8.66025 -5.0) (float-vector -205.0 5.0 -8.66022) (float-vector -205.0 0.0 -10.0) (float-vector -205.0 -5.0 -8.66022) (float-vector -205.0 -8.66025 -5.0) (float-vector -205.0 -10.0 0.0) (float-vector -205.0 -8.66028 5.0)))
         (instance face :init :vertices (list (float-vector -110.0 0.0 10.0) (float-vector -110.0 -5.0 8.66028) (float-vector -110.0 -8.66028 5.0) (float-vector -110.0 -10.0 0.0) (float-vector -110.0 -8.66025 -5.0) (float-vector -110.0 -5.0 -8.66028) (float-vector -110.0 0.0 -10.0) (float-vector -110.0 5.0 -8.66028) (float-vector -110.0 8.66025 -5.0) (float-vector -110.0 10.0 0.0) (float-vector -110.0 8.66025 5.0) (float-vector -110.0 5.0 8.66028)))
         (instance face :init :vertices (list (float-vector -205.0 -5.0 8.66028) (float-vector -110.0 -5.0 8.66028) (float-vector -110.0 0.0 10.0) (float-vector -205.0 0.0 10.0)))
         (instance face :init :vertices (list (float-vector -205.0 -8.66028 5.0) (float-vector -110.0 -8.66028 5.0) (float-vector -110.0 -5.0 8.66028) (float-vector -205.0 -5.0 8.66028)))
         (instance face :init :vertices (list (float-vector -205.0 -10.0 0.0) (float-vector -110.0 -10.0 0.0) (float-vector -110.0 -8.66028 5.0) (float-vector -205.0 -8.66028 5.0)))
         (instance face :init :vertices (list (float-vector -205.0 -8.66025 -5.0) (float-vector -110.0 -8.66025 -5.0) (float-vector -110.0 -10.0 0.0) (float-vector -205.0 -10.0 0.0)))
         (instance face :init :vertices (list (float-vector -205.0 -5.0 -8.66022) (float-vector -110.0 -5.0 -8.66028) (float-vector -110.0 -8.66025 -5.0) (float-vector -205.0 -8.66025 -5.0)))
         (instance face :init :vertices (list (float-vector -205.0 0.0 -10.0) (float-vector -110.0 0.0 -10.0) (float-vector -110.0 -5.0 -8.66028) (float-vector -205.0 -5.0 -8.66022)))
         (instance face :init :vertices (list (float-vector -205.0 5.0 -8.66022) (float-vector -110.0 5.0 -8.66028) (float-vector -110.0 0.0 -10.0) (float-vector -205.0 0.0 -10.0)))
         (instance face :init :vertices (list (float-vector -205.0 8.66025 -5.0) (float-vector -110.0 8.66025 -5.0) (float-vector -110.0 5.0 -8.66028) (float-vector -205.0 5.0 -8.66022)))
         (instance face :init :vertices (list (float-vector -205.0 10.0 0.0) (float-vector -110.0 10.0 0.0) (float-vector -110.0 8.66025 -5.0) (float-vector -205.0 8.66025 -5.0)))
         (instance face :init :vertices (list (float-vector -205.0 8.66025 5.0) (float-vector -110.0 8.66025 5.0) (float-vector -110.0 10.0 0.0) (float-vector -205.0 10.0 0.0)))
         (instance face :init :vertices (list (float-vector -205.0 5.0 8.66028) (float-vector -110.0 5.0 8.66028) (float-vector -110.0 8.66025 5.0) (float-vector -205.0 8.66025 5.0)))
         (instance face :init :vertices (list (float-vector -205.0 0.0 10.0) (float-vector -110.0 0.0 10.0) (float-vector -110.0 5.0 8.66028) (float-vector -205.0 5.0 8.66028)))
       ))
       (instance faceset :init :faces (list
         (instance face :init :vertices (list (float-vector -120.0 -12.5 21.6506) (float-vector -120.0 0.0 25.0) (float-vector -120.0 12.5 21.6506) (float-vector -120.0 21.6506 12.5) (float-vector -120.0 25.0 0.0) (float-vector -120.0 21.6506 -12.5) (float-vector -120.0 12.5 -21.6506) (float-vector -120.0 0.0 -25.0) (float-vector -120.0 -12.5 -21.6506) (float-vector -120.0 -21.6506 -12.5) (float-vector -120.0 -25.0 0.0) (float-vector -120.0 -21.6506 12.5)))
         (instance face :init :vertices (list (float-vector -110.0 0.0 25.0) (float-vector -110.0 -12.5 21.6506) (float-vector -110.0 -21.6506 12.5) (float-vector -110.0 -25.0 0.0) (float-vector -110.0 -21.6506 -12.5) (float-vector -110.0 -12.5 -21.6506) (float-vector -110.0 0.0 -25.0) (float-vector -110.0 12.5 -21.6506) (float-vector -110.0 21.6506 -12.5) (float-vector -110.0 25.0 0.0) (float-vector -110.0 21.6506 12.5) (float-vector -110.0 12.5 21.6506)))
         (instance face :init :vertices (list (float-vector -120.0 -12.5 21.6506) (float-vector -110.0 -12.5 21.6506) (float-vector -110.0 0.0 25.0) (float-vector -120.0 0.0 25.0)))
         (instance face :init :vertices (list (float-vector -120.0 -21.6506 12.5) (float-vector -110.0 -21.6506 12.5) (float-vector -110.0 -12.5 21.6506) (float-vector -120.0 -12.5 21.6506)))
         (instance face :init :vertices (list (float-vector -120.0 -25.0 0.0) (float-vector -110.0 -25.0 0.0) (float-vector -110.0 -21.6506 12.5) (float-vector -120.0 -21.6506 12.5)))
         (instance face :init :vertices (list (float-vector -120.0 -21.6506 -12.5) (float-vector -110.0 -21.6506 -12.5) (float-vector -110.0 -25.0 0.0) (float-vector -120.0 -25.0 0.0)))
         (instance face :init :vertices (list (float-vector -120.0 -12.5 -21.6506) (float-vector -110.0 -12.5 -21.6506) (float-vector -110.0 -21.6506 -12.5) (float-vector -120.0 -21.6506 -12.5)))
         (instance face :init :vertices (list (float-vector -120.0 0.0 -25.0) (float-vector -110.0 0.0 -25.0) (float-vector -110.0 -12.5 -21.6506) (float-vector -120.0 -12.5 -21.6506)))
         (instance face :init :vertices (list (float-vector -120.0 12.5 -21.6506) (float-vector -110.0 12.5 -21.6506) (float-vector -110.0 0.0 -25.0) (float-vector -120.0 0.0 -25.0)))
         (instance face :init :vertices (list (float-vector -120.0 21.6506 -12.5) (float-vector -110.0 21.6506 -12.5) (float-vector -110.0 12.5 -21.6506) (float-vector -120.0 12.5 -21.6506)))
         (instance face :init :vertices (list (float-vector -120.0 25.0 0.0) (float-vector -110.0 25.0 0.0) (float-vector -110.0 21.6506 -12.5) (float-vector -120.0 21.6506 -12.5)))
         (instance face :init :vertices (list (float-vector -120.0 21.6506 12.5) (float-vector -110.0 21.6506 12.5) (float-vector -110.0 25.0 0.0) (float-vector -120.0 25.0 0.0)))
         (instance face :init :vertices (list (float-vector -120.0 12.5 21.6506) (float-vector -110.0 12.5 21.6506) (float-vector -110.0 21.6506 12.5) (float-vector -120.0 21.6506 12.5)))
         (instance face :init :vertices (list (float-vector -120.0 0.0 25.0) (float-vector -110.0 0.0 25.0) (float-vector -110.0 12.5 21.6506) (float-vector -120.0 12.5 21.6506)))
       ))
       ))
     (dolist (b (cdr bc)) (send (car bc) :assoc b))
     (send (elt bc 0) :set-color :dimgray)
     (send (elt bc 1) :set-color :dimgray)
     (send (elt bc 2) :set-color :dimgray)
     (send (elt bc 3) :set-color :dimgray)
     (send (elt bc 4) :set-color :dimgray)
     (send (elt bc 5) :set-color :dimgray)
     (setq blink2 (instance bodyset-link :init (make-cascoords) :bodies bc :name :bodyset264388596 :weight 1 :centroid (float-vector 0.0 0.0 0.0) :inertia-tensor #2f((1.0 0.0 0.0) (0.0 1.0 0.0) (0.0 0.0 1.0))))

     ;; definition of assoc
     (send blink2 :newcoords (make-coords :pos (float-vector 90.0 885.0 960.0) :rot #2f((1.0 0.0 0.0) (0.0 1.0 0.0) (0.0 0.0 1.0))))
     (send blink1 :assoc blink2)
     (send blink3 :newcoords (make-coords :pos (float-vector 30.0 885.0 1060.0) :rot #2f((1.0 0.0 0.0) (0.0 1.0 0.0) (0.0 0.0 1.0))))
     (send blink1 :assoc blink3)
     (send blink1 :newcoords (make-coords :pos (float-vector -15.0 -480.0 0.0) :rot #2f((1.0 0.0 0.0) (0.0 1.0 0.0) (0.0 0.0 1.0))))
     (send blink0 :assoc blink1)
     (send self :assoc blink0)

     ;; definition of end-coords

     ;; definition of joint

     ;; definition of :door
     (setq joint0 (instance rotational-joint :init
			     :parent-link blink0 :child-link blink1 :name :door      :axis :-z
			     :min    0.0 :max   90.0))

     ;; definition of :knob
     (setq joint1 (instance rotational-joint :init
			     :parent-link blink1 :child-link blink2 :name :knob      :axis :x 
			     :min    0.0 :max   90.0))

     ;; definition of :lock
     (setq joint2 (instance rotational-joint :init
			     :parent-link blink2 :child-link blink3 :name :lock      :axis :x 
			     :min  -90.0 :max    0.0))

     (setq links (list blink0 blink1 blink2 blink3))
     (setq joint-list (list joint0 joint1 joint2))
     (send self :init-ending)
     (send self :move-to (make-coords :pos pos :rot rot))
     (send-all links :worldcoords)
     self))
  )

(defun akiba-door (&rest args) (instance* akiba-door-object :init args))
;; (format *error-output* "(instance akiba-door-object :init) for generating model~%")