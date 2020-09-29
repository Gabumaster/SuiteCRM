class Task < SitePrism::Page
    set_url "https://demo.suiteondemand.com/"
    
    # --------------------elements---------------------------#
    element :usu, 'input[id="user_name"]'
    element :pass, 'input[id="username_password"]'
    element :loginbutton, 'input[id="bigbutton"]'
    element :create, :xpath, '(//*[@id="quickcreatetop"])[3]'
    element :createtask, :xpath, '(//a[@href="index.php?module=Tasks&action=EditView&return_module=Tasks&return_action=DetailView"])[3]'
    element :waithtml, 'canvas[class="resizableCanvas"]'
    element :nome, 'input[id="name"]'
    element :priority, 'select[id="priority"]'
    element :p2, 'option[label="Medium"]'
    element :descricao, 'textarea[id="description"]'
    element :status, 'select[id="status"]'
    element :s1, 'option[label="In Progress"]'
    element :save, :xpath, '(//*[@*="Save"])[2]'
    element :view, :xpath, '(//*[@*="actionmenulink"])[2]'
    element :selection, 'div[class="listViewBody"]' #'table[class="list view table-responsive"]' :xpath,'(//*[@*="name"])[1]'
    element :nametask, :xpath, '(//*[@*="name"])[1]'
    element :activities, :xpath, '(//*[@*="dropdown-toggle grouptab"])[4]'
    element :list, '*[href="?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DTasks%26action%3Dindex%26parentTab%3DActivities"]'
    element :action, :xpath, '(//*[@*="dropdown-toggle"])[4]'
    element :edit, 'input[id="edit_button"]'
    element :editDes, :xpath, '(//*[@id="tab-content-0"]/div[5]/div/div[2])'
    element :editsave, :xpath, '(//*[@id="SAVE"])[1]'
    element :editview, :xpath, '(//*[@id="MassUpdate"]/div[3]/table/tbody/tr[1]/td[4]/b/a)'
    element :usulogout, :xpath, '(//*[@id="with-label"]/span[2])'
    element :logout, '(a[id="logout_link"])[3]'
    # ---------------------------------------------------------#

    def login(usuario, senha)
        usu.set(usuario)
        pass.set(senha)
        loginbutton.click
        wait_until_waithtml_visible
    end
    
    def taskopen
        create.hover
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

    def tasklist
      activities.hover
      list.click
      nametask.click
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
  