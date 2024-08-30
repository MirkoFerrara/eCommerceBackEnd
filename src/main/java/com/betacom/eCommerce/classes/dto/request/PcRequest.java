package com.betacom.eCommerce.classes.dto.request;

    public class PcRequest extends ProductRequest {
        private Integer id;
        private Integer idRam;
        private  Integer idCPU;
        private Integer idGPU;
        private Integer idMemory;
        private Integer idMotherboard;
        private Boolean cart;
        private Integer idCooler;
        private Integer idPsu;


        public Integer getIdCooler() {
            return idCooler;
        }
        public void setIdCooler(Integer idCooler) {
            this.idCooler = idCooler;
        }
        public Integer getIdPsu() {
            return idPsu;
        }
        public void setIdPsu(Integer idPsu) {
            this.idPsu = idPsu;
        }
        public Boolean getCart() {
            return cart;
        }
        public void setCart(Boolean cart) {
            this.cart = cart;
        }
        public Integer getId() {
            return id;
        }
        public void setId(Integer id) {
            this.id = id;
        }
        public Integer getIdRam() {
            return idRam;
        }
        public void setIdRam(Integer idRam) {
            this.idRam = idRam;
        }
        public Integer getIdCPU() {
            return idCPU;
        }
        public void setIdCPU(Integer idCPU) {
            this.idCPU = idCPU;
        }
        public Integer getIdGPU() {
            return idGPU;
        }
        public void setIdGPU(Integer idGPU) {
            this.idGPU = idGPU;
        }
        public Integer getIdMemory() {
            return idMemory;
        }
        public void setIdMemory(Integer idMemory) {
            this.idMemory = idMemory;
        }
        public Integer getIdMotherboard() {
            return idMotherboard;
        }
        public void setIdMotherboard(Integer idMotherboard) {
            this.idMotherboard = idMotherboard;
        }
    }
