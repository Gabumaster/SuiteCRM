class Task < SitePrism::Page
    set_url "https://demo.suiteondemand.com/"
    
    # --------------------elements---------------------------#
    element :usu, 'input[id="user_name"]'
    element :pass, 'input[id="username_password"]'
    element :loginbutton, 'input[id="bigbutton"]'
    element :create, :xpath, '(//*[@id="quickcreatetop"])[3]'
    element :dropdown, :xpath, '(//ul[@class="dropdown-menu"])[11]'
    element :createtask, :xpath, '(//a[@href="index.php?module=Tasks&action=EditView&return_module=Tasks&return_action=DetailView"] ["Create Tasks"])[3]'
    element :nome, 'input[id="name"]'
    element :priority, 'select[id="priority"]'
    element :p2, 'option[label="Medium"]'
    element :descricao, 'textarea[id="description"]'
    element :status, 'select[id="status"]'
    element :s1, 'option[label="In Progress"]'
    element :save, :xpath, '(//*[@id="SAVE"])[1]'
    element :view, :xpath, '(//*[@*="actionmenulink"])[2]'
    element :selection, :xpath, '(//*[@type="name"])[1]' #'table[class="list view table-responsive"]'
    element :action, :xpath, '(//*[@*="dropdown-toggle"])[4]'
    element :edit, 'input[id="edit_button"]'
    element :editDes, :xpath, '(//*[@id="tab-content-0"]/div[5]/div/div[2])'
    element :editsave, :xpath, '(//*[@id="SAVE"])[1]'
    element :editview, :xpath, '(//*[@id="MassUpdate"]/div[3]/table/tbody/tr[1]/td[4]/b/a)'
    element :usulogout, :xpath, '(//*[@id="with-label"]/span[2])'
    element :logout, '(a[id="logout_link"])[3]'
    # ---------------------------------------------------------#

    def initialize
      Faker::Config.locale = 'pt-BR'
    #   @cpf = Faker::CPF.numeric
      @nome = Faker::Games::Zelda.location
      @descricao = Faker::WorldCup.stadium
    

    #   @telnumero = Faker::PhoneNumber.phone_number
    #   @datanasc = Faker::Date.birthday(min_age: 35, max_age: 50).strftime("%d/%m/%Y")
    #   @telefone = Faker::PhoneNumber.phone_number
    #   @celular = Faker::PhoneNumber.cell_phone
    #   @email = Faker::Internet.free_email
    #   @confemail = @email
    #   @cep = Faker::Address.zip_code
    #   @logradouro = Faker::Address.street_name
    #   @numlgrd = Faker::Address.building_number
    #   @complemento = Faker::Address.secondary_address
    #   @bairro = Faker::Address.community
    #   @senha = Faker::Number.number(digits: 6)
    #   @validatask = selection.text(@nome)
    end

    def login(usuario, senha)
        usu.set(usuario)
        pass.set(senha)
        loginbutton.click
        # sleep 3
    end
    
    def taskopen
        create.hover
        wait_until_create_visible
        wait_until_dropdown_visible
        createtask.click
    end

    def taskcreate(subject, description)
        nome.set(subject) 
        priority.click
        p2.set true
        descricao.set(description)  
        status.click
        s1.set true
        save.click
    end


    
    #   def Senha
    #     senhacadastro.set @senha
    #     senhaconf.set(@senha)
    #   end
    
    #   def Finalizacao
    #     enviadados.click
    #     wait_until_alert_visible
    #     puts alert.text
    #   end
end
  