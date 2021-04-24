Então('o seguinte texto estará na página {string}') do |texto_testado|
    expect(@base.driver.page_source).to include(texto_testado)
end

