package com.betacom.eCommerce.classes.dto.view;

/**
 * Represents a view model for a PC product in the eCommerce system.
 * This class extends {@link ProductView} and includes specific properties
 * related to a PC, such as the IDs of its components (RAM, CPU, GPU, Memory, Motherboard).
 *
 * <p>This class provides getter and setter methods for each component's ID.
 * </p>
 *
 * @author MirkoFerrara
 * @author FrancescoCali
 * @author marcoguzzo
 * @author AngeloAnatilopan
 */
public class PcView extends ProductView {
    private Integer id;
    private Integer idRam;
    private Integer idCPU;
    private Integer idGPU;
    private Integer idMemory;
    private Integer idMotherboard;

    /**
     * Default constructor for creating an empty PcView instance.
     */
    public PcView() {

    }

    /**
     * Gets the ID of the PC.
     *
     * @return the ID of the PC.
     */
    public Integer getId() {
        return id;
    }

    /**
     * Sets the ID of the PC.
     *
     * @param id the ID to set for the PC.
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * Gets the ID of the RAM component.
     *
     * @return the ID of the RAM component.
     */
    public Integer getIdRam() {
        return idRam;
    }

    /**
     * Sets the ID of the RAM component.
     *
     * @param idRam the ID to set for the RAM component.
     */
    public void setIdRam(Integer idRam) {
        this.idRam = idRam;
    }

    /**
     * Gets the ID of the CPU component.
     *
     * @return the ID of the CPU component.
     */
    public Integer getIdCPU() {
        return idCPU;
    }

    /**
     * Sets the ID of the CPU component.
     *
     * @param idCPU the ID to set for the CPU component.
     */
    public void setIdCPU(Integer idCPU) {
        this.idCPU = idCPU;
    }

    /**
     * Gets the ID of the GPU component.
     *
     * @return the ID of the GPU component.
     */
    public Integer getIdGPU() {
        return idGPU;
    }

    /**
     * Sets the ID of the GPU component.
     *
     * @param idGPU the ID to set for the GPU component.
     */
    public void setIdGPU(Integer idGPU) {
        this.idGPU = idGPU;
    }

    /**
     * Gets the ID of the memory component.
     *
     * @return the ID of the memory component.
     */
    public Integer getIdMemory() {
        return idMemory;
    }

    /**
     * Sets the ID of the memory component.
     *
     * @param idMemory the ID to set for the memory component.
     */
    public void setIdMemory(Integer idMemory) {
        this.idMemory = idMemory;
    }

    /**
     * Gets the ID of the motherboard component.
     *
     * @return the ID of the motherboard component.
     */
    public Integer getIdMotherboard() {
        return idMotherboard;
    }

    /**
     * Sets the ID of the motherboard component.
     *
     * @param idMotherboard the ID to set for the motherboard component.
     */
    public void setIdMotherboard(Integer idMotherboard) {
        this.idMotherboard = idMotherboard;
    }
}