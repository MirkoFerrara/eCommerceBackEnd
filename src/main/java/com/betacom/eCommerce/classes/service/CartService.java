package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iRepository.*;
import com.betacom.eCommerce.interfaces.iService.iCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CartService implements iCartService{

        @Autowired
        private iPsuRepository psuRepo;
        @Autowired
        private iCartRepository cartRepo;
        @Autowired
        private iUserRepository userRepo;
        @Autowired
        private iProductRepository productRepo;
        @Autowired
        private iPcRepository pcRepo;
        @Autowired
        private iGpuRepository gpuRepo;
        @Autowired
        private iCpuRepository cpuRepo;
        @Autowired
        private iMemoryRepository memoryRepo;
        @Autowired
        private iLaptopRepository laptopRepo;
        @Autowired
        private iMonitorRepository monitorRepo;
        @Autowired
        private iRamRepository ramRepo;
        @Autowired
        private iMotherboardRepository motherboardRepo;
        @Autowired
        private iMouseRepository mouseRepo;
        @Autowired
        private iCoolerRepository coolerRepo;
        @Autowired
        private iKeyboardRepository keyboardRepo;

        @Override
        public void create(CartRequest req ) throws Exception {

            CartPojo pojo = new CartPojo();
            Optional<ProductPojo> optProduct = productRepo.findById(req.getIdProduct());
            Optional<UserPojo> optUser = userRepo.findByUsername(req.getUsername());

            if( updateRepo( optProduct.get() , true , pojo) ){
                pojo.setProduct(optProduct.get());
                pojo.setUser(optUser.get());
                pojo.setSelected(req.getSelected());
                cartRepo.save(pojo);
            } else
                throw new Exception("Articolo esaurito") ;
        }

        public boolean updateRepo( ProductPojo productPojo , boolean value , CartPojo cartPojo){
            if (productPojo.getItem().equalsIgnoreCase("psu")) {
                if(!value){
                    psuRepo.findById(cartPojo.getIdItem()).get().setCart(value);
                    return true;
                }
                List<PsuPojo> filteredList =  productPojo.getPsu().stream()
                        .filter(pojo -> !pojo.getCart())
                        .toList();
                if (!filteredList.isEmpty()) {
                    PsuPojo lastPojo = filteredList.get(filteredList.size() - 1);
                    lastPojo.setCart(value);
                    psuRepo.save(lastPojo);
                    cartPojo.setIdItem(lastPojo.getId());
                    return true;
                }
            } else if ( productPojo.getItem().equalsIgnoreCase("monitor") ){

                if(!value){

                    System.out.println(cartPojo.getProduct().getUrl());
                    System.out.println(cartPojo.getIdItem()+ "idItem");
                    System.out.println("QUEL PORCO DI DIO");

                    monitorRepo.findById(cartPojo.getIdItem()).get().setCart(value);
                    return true;
                }
                List<MonitorPojo> filteredList =  productPojo.getMonitor().stream()
                        .filter(pojo -> !pojo.getCart())
                        .toList();
                System.out.println(filteredList.size() +" SIZE ");
                if (!filteredList.isEmpty()) {
                    MonitorPojo lastPojo = filteredList.get(filteredList.size() - 1);
                    lastPojo.setCart(value);
                    monitorRepo.save(lastPojo);
                    cartPojo.setIdItem(lastPojo.getId());
                    return true;
                }
            } else if (  productPojo.getItem().equalsIgnoreCase("ram") ) {
                if(!value){
                    ramRepo.findById(cartPojo.getIdItem()).get().setCart(value);
                    return true;
                }
                List<RamPojo> filteredList =  productPojo.getRam().stream()
                        .filter(pojo -> !pojo.getCart())
                        .toList();
                if (!filteredList.isEmpty()) {
                    RamPojo lastPojo = filteredList.get(filteredList.size() - 1);
                    lastPojo.setCart(value);
                    ramRepo.save(lastPojo);
                    cartPojo.setIdItem(lastPojo.getId());
                    return true;
                }
            } else if (  productPojo.getItem().equalsIgnoreCase("memory") ) {
                if(!value){
                    memoryRepo.findById(cartPojo.getIdItem()).get().setCart(value);
                    return true;
                }
                List<MemoryPojo> filteredList =  productPojo.getMemory().stream()
                        .filter(pojo -> !pojo.getCart())
                        .toList();
                if (!filteredList.isEmpty()) {
                    MemoryPojo lastPojo = filteredList.get(filteredList.size() - 1);
                    lastPojo.setCart(value);
                    memoryRepo.save(lastPojo);
                    cartPojo.setIdItem(lastPojo.getId());
                    return true;
                }
            } else if (  productPojo.getItem().equalsIgnoreCase("keyboard") ) {
                if(!value){
                    keyboardRepo.findById(cartPojo.getIdItem()).get().setCart(value);
                    return true;
                }
                List<KeyboardPojo> filteredList =  productPojo.getKeyboard().stream()
                        .filter(pojo -> !pojo.getCart())
                        .toList();
                if (!filteredList.isEmpty()) {
                    KeyboardPojo lastPojo = filteredList.get(filteredList.size() - 1);
                    lastPojo.setCart(value);
                    keyboardRepo.save(lastPojo);
                    cartPojo.setIdItem(lastPojo.getId());
                    return true;
                }
            } else if (  productPojo.getItem().equalsIgnoreCase("gpu") ) {
                if(!value){
                    gpuRepo.findById(cartPojo.getIdItem()).get().setCart(value);
                    return true;
                }
                List<GpuPojo> filteredList =  productPojo.getGpu().stream()
                        .filter(pojo -> !pojo.getCart())
                        .toList();
                if (!filteredList.isEmpty()) {
                    GpuPojo lastPojo = filteredList.get(filteredList.size() - 1);
                    lastPojo.setCart(value);
                    gpuRepo.save(lastPojo);
                    cartPojo.setIdItem(lastPojo.getId());
                    return true;
                }
            } else if ( productPojo.getItem().equalsIgnoreCase("cooler")){
                if(!value){
                    coolerRepo.findById(cartPojo.getIdItem()).get().setCart(value);
                    return true;
                }
                List<CoolerPojo> filteredList =  productPojo.getCooler().stream()
                        .filter(pojo -> !pojo.getCart())
                        .toList();
                if (!filteredList.isEmpty()) {
                    CoolerPojo lastPojo = filteredList.get(filteredList.size() - 1);
                    lastPojo.setCart(value);
                    coolerRepo.save(lastPojo);
                    cartPojo.setIdItem(lastPojo.getId());
                    return true;
                }
            } else if (  productPojo.getItem().equalsIgnoreCase("cpu") ) {
                if(!value){
                    cpuRepo.findById(cartPojo.getIdItem()).get().setCart(value);
                    return true;
                }
                List<CpuPojo> filteredList =  productPojo.getCpu().stream()
                        .filter(pojo -> !pojo.getCart())
                        .toList();
                if (!filteredList.isEmpty()) {
                    CpuPojo lastPojo = filteredList.get(filteredList.size() - 1);
                    lastPojo.setCart(value);
                    cpuRepo.save(lastPojo);
                    cartPojo.setIdItem(lastPojo.getId());
                    return true;
                }
            } else if (  productPojo.getItem().equalsIgnoreCase("mouse") ) {
                if(!value){
                    mouseRepo.findById(cartPojo.getIdItem()).get().setCart(value);
                    return true;
                }
                List<MousePojo> filteredList =  productPojo.getMouse().stream()
                        .filter(pojo -> !pojo.getCart())
                        .toList();
                if (!filteredList.isEmpty()) {
                    MousePojo lastPojo = filteredList.get(filteredList.size() - 1);
                    lastPojo.setCart(value);
                    mouseRepo.save(lastPojo);
                    cartPojo.setIdItem(lastPojo.getId());
                    return true;
                }
            } else if (  productPojo.getItem().equalsIgnoreCase("motherboard") ) {
                if(!value){
                    motherboardRepo.findById(cartPojo.getIdItem()).get().setCart(value);
                    return true;
                }
                List<MotherboardPojo> filteredList =  productPojo.getMotherboard().stream()
                        .filter(pojo -> !pojo.getCart())
                        .toList();
                if (!filteredList.isEmpty()) {
                    MotherboardPojo lastPojo = filteredList.get(filteredList.size() - 1);
                    lastPojo.setCart(value);
                    motherboardRepo.save(lastPojo);
                    cartPojo.setIdItem(lastPojo.getId());
                    return true;
                }
            } else if (  productPojo.getItem().equalsIgnoreCase("laptop") ) {
                if(!value){
                    laptopRepo.findById(cartPojo.getIdItem()).get().setCart(value);
                    return true;
                }
                List<LaptopPojo> filteredList =  productPojo.getLaptop().stream()
                        .filter(pojo -> !pojo.getCart())
                        .toList();
                if (!filteredList.isEmpty()) {
                    LaptopPojo lastPojo = filteredList.get(filteredList.size() - 1);
                    lastPojo.setCart(value);
                    laptopRepo.save(lastPojo);
                    cartPojo.setIdItem(lastPojo.getId());
                    return true;
                }
            } else if (  productPojo.getItem().equalsIgnoreCase("pc") ) {
                if(!value){
                    pcRepo.findById(cartPojo.getIdItem()).get().setCart(value);
                    return true;
                }
                List<PcPojo> filteredList =  productPojo.getPc().stream()
                        .filter(pojo -> !pojo.getCart())
                        .toList();
                if (!filteredList.isEmpty()) {
                    PcPojo lastPojo = filteredList.get(filteredList.size() - 1);
                    lastPojo.setCart(value);
                    pcRepo.save(lastPojo);
                    cartPojo.setIdItem(lastPojo.getId());
                    return true;
                }
            }
            return false;
        }

    public void deleteRepo( Integer id , String item ) throws Exception {

        if ( item.equalsIgnoreCase("psu")) {
            psuRepo.delete(psuRepo.findById(id).get());
        } else if ( item.equalsIgnoreCase("monitor") ){
            monitorRepo.delete(monitorRepo.findById(id).get());
        } else if ( item.equalsIgnoreCase("ram") ) {
            ramRepo.delete(ramRepo.findById(id).get());
        } else if ( item.equalsIgnoreCase("memory") ) {
            memoryRepo.delete(memoryRepo.findById(id).get());
        } else if ( item.equalsIgnoreCase("keyboard") ) {
            keyboardRepo.delete(keyboardRepo.findById(id).get());
        } else if ( item.equalsIgnoreCase("gpu") ) {
            gpuRepo.delete(gpuRepo.findById(id).get());
        } else if (item.equalsIgnoreCase("cooler")){
            coolerRepo.delete(coolerRepo.findById(id).get());
        } else if ( item.equalsIgnoreCase("cpu") ) {
             cpuRepo.delete(cpuRepo.findById(id).get());
        } else if ( item.equalsIgnoreCase("mouse") ) {
            mouseRepo.delete(mouseRepo.findById(id).get());
        } else if ( item.equalsIgnoreCase("motherboard") ) {
            motherboardRepo.delete( motherboardRepo.findById(id).get());
        } else if ( item.equalsIgnoreCase("laptop") ) {
            laptopRepo.delete(laptopRepo.findById(id).get());
        } else if ( item.equalsIgnoreCase("pc") ) {
            pcRepo.delete(pcRepo.findById(id).get() );
        }
    }

    /* Funzione per confermare l'acquisto o rimuovere un oggetto dal carrello :
    * 1 caso : viene confermato l'acquisto , quindi si elimina la riga
    *           dal carrello e dalla tabella del prodotto acquistato
    *
    * 2 caso : viene rimosso dal carrello un oggetto , quindi viene
    *           eliminata la riga nel carrello , e viene reimpostato a false
    *           il campo che indica se un prodotto è all'interno del carrello
    * */
    @Override
    public void removeFromCart(CartRequest req ) throws Exception {
        ProductPojo productPojo = productRepo.findById(req.getIdProduct()).get();
        CartPojo cartPojo = cartRepo.findById(req.getId()).get();
        updateRepo( productPojo , false ,  cartPojo);
        remove(req.getId());
    }

    @Override
    public CartView getById(Integer id) {
        return transformInView(cartRepo.findById(id).get()) ;
    }

    private CartView transformInView(CartPojo pojo) {
            CartView view = new CartView();
            view.setId(pojo.getId());
            view.setIdProduct(pojo.getProduct().getId());
            view.setUsername(pojo.getUser().getUsername());
            view.setIdItem(pojo.getIdItem());
            view.setDescription(pojo.getProduct().getDescription());
            view.setUrl(pojo.getProduct().getUrl());
            view.setPrice(pojo.getProduct().getPrice().intValue());
            return view;
    }

    private List<CartView> transformInView(List<CartPojo> cart) {
        return cart.stream().map(s -> {
            CartView view = new CartView();
            view.setId(s.getId());
            view.setUsername(s.getUser().getUsername());
            view.setIdProduct(s.getProduct().getId());
            view.setUsername(s.getUser().getUsername());
            view.setIdItem(s.getIdItem());
            view.setUrl(s.getProduct().getUrl());
            view.setDescription(s.getProduct().getDescription());
            view.setUrl(s.getProduct().getUrl());
            view.setPrice(s.getProduct().getPrice().intValue());
            view.setSelected(s.getSelected());
            return view;
        }).collect(Collectors.toList());
    }

    @Override
    public void remove(Integer id) throws Exception {
        cartRepo.delete(cartRepo.findById(id).get());
    }

    @Override
    public List<CartView> list(String username) throws Exception {

        List<CartPojo>cart = cartRepo.findAll();
        List<CartPojo> filteredList = cart.stream()
                .filter(item -> item.getUser().getUsername().equalsIgnoreCase(username)  )
                .toList();
        if(filteredList.isEmpty())
            throw new Exception("La lista è vuota");
        return transformInView(filteredList);
    }

    @Override
    public List<CartView> listSelectedProducts(String username) throws Exception {

        List<CartPojo> filteredList = cartRepo.findAll().stream()
                .filter(item -> item.getUser().getUsername().equalsIgnoreCase(username)  )
                .filter(CartPojo::getSelected)
                .toList();

        if(filteredList.isEmpty())
            throw new Exception("La lista è vuota");

        return transformInView(filteredList);
    }

    @Override
    public void select(Integer id) {
        CartPojo pojo = cartRepo.findById(id).get();
        pojo.setSelected(!pojo.getSelected());
        cartRepo.save(pojo);
    }

    @Override
    public void purchaseConfirmed(String username) {
        List<CartPojo> filteredList = cartRepo.findAll().stream()
                .filter(item -> item.getUser().getUsername().equalsIgnoreCase(username))
                .filter(CartPojo::getSelected)
                .toList();
        for (CartPojo cartPojo : filteredList) {
            try {
                deleteRepo(cartPojo.getIdItem(), cartPojo.getProduct().getItem());
                cartRepo.delete(cartPojo);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
