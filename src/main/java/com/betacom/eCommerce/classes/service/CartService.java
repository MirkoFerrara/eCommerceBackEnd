package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.MonitorRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iRepository.*;
import com.betacom.eCommerce.interfaces.iService.iCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CartService implements iCartService{

        @Autowired
        private iSmartphoneRepository smartphoneRepo;
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
        private iTvRepository tvRepo;
        @Autowired
        private iKeyboardRepository keyboardRepo;

        @Override
        public void create(CartRequest req ) throws Exception {

            CartPojo pojo = new CartPojo();

            Optional<ProductPojo> optProduct = productRepo.findById(req.getIdProduct());
            Optional<UserPojo> optUser = userRepo.findById(req.getIdUser());

            updateRepo( req.getIdItem() , req.getItem() , true );
            pojo.setProduct(optProduct.get());
            pojo.setUser(optUser.get());
            cartRepo.save(pojo);
        }

        public void updateRepo( Integer id , String item , boolean value ){

            if ( item.equalsIgnoreCase("smartphone")) {
                SmartphonePojo pojo = smartphoneRepo.findById(id).get();
                pojo.setCart(value);
                smartphoneRepo.save(pojo);
            } else if ( item.equalsIgnoreCase("monitor") ){
                MonitorPojo pojo = monitorRepo.findById(id).get();
                pojo.setCart(value);
                monitorRepo.save(pojo);
            } else if ( item.equalsIgnoreCase("ram") ) {
                RamPojo pojo = ramRepo.findById(id).get();
                pojo.setCart(value);
                ramRepo.save(pojo);
            } else if ( item.equalsIgnoreCase("memory") ) {
                MemoryPojo pojo = memoryRepo.findById(id).get();
                pojo.setCart(value);
                memoryRepo.save(pojo);
            } else if ( item.equalsIgnoreCase("keyboard") ) {
                KeyboardPojo pojo = keyboardRepo.findById(id).get();
                pojo.setCart(value);
                keyboardRepo.save(pojo);
            } else if ( item.equalsIgnoreCase("gpu") ) {
                GpuPojo pojo = gpuRepo.findById(id).get();
                pojo.setCart(value);
                gpuRepo.save(pojo);
            } else if (item.equalsIgnoreCase("tv")){
                TvPojo pojo = tvRepo.findById(id).get();
                pojo.setCart(value);
                tvRepo.save(pojo);
            } else if ( item.equalsIgnoreCase("cpu") ) {
                CpuPojo pojo = cpuRepo.findById(id).get();
                pojo.setCart(value);
                cpuRepo.save(pojo);
            } else if ( item.equalsIgnoreCase("mouse") ) {
                MousePojo pojo = mouseRepo.findById(id).get();
                pojo.setCart(value);
                mouseRepo.save(pojo);
            } else if ( item.equalsIgnoreCase("motherboard") ) {
                MotherboardPojo pojo = motherboardRepo.findById(id).get();
                pojo.setCart(value);
                motherboardRepo.save(pojo);
            } else if ( item.equalsIgnoreCase("laptop") ) {
                LaptopPojo pojo = laptopRepo.findById(id).get();
                pojo.setCart(value);
                laptopRepo.save(pojo);
            } else if ( item.equalsIgnoreCase("pc") ) {
                PcPojo pojo = pcRepo.findById(id).get();
                pojo.setCart(value);
                pcRepo.save(pojo);
            }
        }

    public void deleteRepo( Integer id , String item ) throws Exception {

        if ( item.equalsIgnoreCase("smartphone")) {
            SmartphonePojo pojo = smartphoneRepo.findById(id).get() ;
            smartphoneRepo.delete(pojo);
        } else if ( item.equalsIgnoreCase("monitor") ){
            MonitorPojo pojo = monitorRepo.findById(id).get() ;
            monitorRepo.delete(pojo);
        } else if ( item.equalsIgnoreCase("ram") ) {
            RamPojo pojo = ramRepo.findById(id).get() ;
            ramRepo.delete(pojo);
        } else if ( item.equalsIgnoreCase("memory") ) {
            MemoryPojo pojo = memoryRepo.findById(id).get() ;
            memoryRepo.delete(pojo);
        } else if ( item.equalsIgnoreCase("keyboard") ) {
            KeyboardPojo pojo = keyboardRepo.findById(id).get() ;
            keyboardRepo.delete(pojo);
        } else if ( item.equalsIgnoreCase("gpu") ) {
            GpuPojo pojo = gpuRepo.findById(id).get() ;
            gpuRepo.delete(pojo);
        } else if (item.equalsIgnoreCase("tv")){
            TvPojo pojo = tvRepo.findById(id).get();
            tvRepo.delete(pojo);
        } else if ( item.equalsIgnoreCase("cpu") ) {
            CpuPojo pojo = cpuRepo.findById(id).get() ;
            cpuRepo.delete(pojo);
        } else if ( item.equalsIgnoreCase("mouse") ) {
            MousePojo pojo = mouseRepo.findById(id).get() ;
            mouseRepo.delete(pojo);
        } else if ( item.equalsIgnoreCase("motherboard") ) {
            MotherboardPojo pojo = motherboardRepo.findById(id).get() ;
            motherboardRepo.delete(pojo);
        } else if ( item.equalsIgnoreCase("laptop") ) {
            LaptopPojo pojo = laptopRepo.findById(id).get() ;
            laptopRepo.delete(pojo);
        } else if ( item.equalsIgnoreCase("pc") ) {
            PcPojo pojo = pcRepo.findById(id).get() ;
            pcRepo.delete(pojo);
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
    public void removeFromCart(CartRequest req) throws Exception {

        if (req.getConfirm())
            deleteRepo(req.getIdItem(),req.getItem()); // (es.) id nella tabella smartphone e stringa contenente "smartphone"
        else
            updateRepo(req.getIdItem(),req.getItem() , false);

        remove(req.getId());
    }

    private List<CartView> transformInView(List<CartPojo> cart) {
        return cart.stream().map(s -> {
            CartView view = new CartView();
            view.setId(s.getId());
            view.setIdUser(s.getUser().getId());
            view.setBrand(s.getProduct().getBrand());
            view.setColour(s.getProduct().getColour());
            view.setDescription(s.getProduct().getDescription());
            view.setPrice(s.getProduct().getPrice());
            view.setModel(s.getProduct().getModel());
            return view;
        }).collect(Collectors.toList());
    }

    @Override
    public void remove(Integer id) throws Exception {
        cartRepo.delete(cartRepo.findById(id).get());
    }

    @Override
    public List<CartView> list(Integer id) throws Exception {

        List<CartPojo>cart = cartRepo.findAll();
        List<CartPojo> filteredList = cart.stream()
                .filter(item -> item.getUser().getId() == id )
                .toList();

        if(filteredList.isEmpty())
            throw new Exception("La lista è vuota");

        return transformInView(filteredList);
    }
}
