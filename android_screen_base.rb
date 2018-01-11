def wait_for_element(atributos)
    begin
        wait = Selenium::WebDriver::Wait.new :timeout => 5
        wait.until { find_element(atributos).displayed? }
    rescue
      raise 'Not found result'
    end
end


def wait_for_click(atributos)
    begin
        wait = Selenium::WebDriver::Wait.new :timeout => 5
        wait { find_element(atributos).click }
    rescue
        raise 'Failed to complete action'
    end 
end