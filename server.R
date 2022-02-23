server <- function(input, output, session) {
  
  #### test page
    r <- reactiveValues(cat = character())
    observeEvent(input$check1, {
      updateTextInput(session, "cat", value = "")
    })
    
    outputcat <- eventReactive(input$check1, {
      if(input$cat == "көрөр"){
        print("Correct!")
      } else {
        print('Incorrect!')
      }
    })
    output$cat1 <- renderTable(outputcat(), colnames = FALSE, bordered = TRUE)
    
    
    ##second question
    r <- reactiveValues(sister = character())
    observeEvent(input$gosister, {
      updateTextInput(session, "sister", value = "")
    })
    
    outputsister <- eventReactive(input$gosister, {
      if(input$sister == "үөрэнэр"){
        print("Correct!")
      } else {
        print('Incorrect!')
      }
    })
    output$sister1 <- renderTable(outputsister(), colnames = FALSE, bordered = TRUE)
    
    ##third question
    r <- reactiveValues(pen = character())
    observeEvent(input$gopen, {
      updateTextInput(session, "pen", value = "")
    })
    
    outputpen <- eventReactive(input$gopen, {
      if(input$pen == "олорор"){
        print("Correct!")
      } else {
        print('Incorrect!')
      }
    })
    output$pen1 <- renderTable(outputpen(), colnames = FALSE, bordered = TRUE)
    
    
    ### second row
    r <- reactiveValues(cat2 = character())
    observeEvent(input$check2, {
      updateTextInput(session, "cat2", value = "")
    })
    
    outputcat2 <- eventReactive(input$check2, {
      if(input$cat2 == "олороллор"){
        print("Correct!")
      } else {
        print('Incorrect!')
      }
    })
    output$cat3 <- renderTable(outputcat2(), colnames = FALSE, bordered = TRUE)
    

    r <- reactiveValues(sister2 = character())
    observeEvent(input$gosister2, {
      updateTextInput(session, "sister2", value = "")
    })
    
    outputsister2 <- eventReactive(input$gosister2, {
      if(input$sister2 == "кинигэлэр"){
        print("Correct!")
      } else {
        print('Incorrect!')
      }
    })
    output$sister3 <- renderTable(outputsister2(), colnames = FALSE, bordered = TRUE)
    
    ##third question
    r <- reactiveValues(pen2 = character())
    observeEvent(input$gopen2, {
      updateTextInput(session, "pen2", value = "")
    })
    
    outputpen2 <- eventReactive(input$gopen2, {
      if(input$pen2 == "кэпсэтэллэр"){
        print("Correct!")
      } else {
        print('Incorrect!')
      }
    })
    output$pen3 <- renderTable(outputpen2(), colnames = FALSE, bordered = TRUE)
    
    
    ### third row
    r <- reactiveValues(cat4 = character())
    observeEvent(input$check4, {
      updateTextInput(session, "cat4", value = "")
    })
    
    outputcat4 <- eventReactive(input$check4, {
      if(input$cat4 == "барыма"){
        print("Correct!")
      } else {
        print('Incorrect!')
      }
    })
    output$cat5 <- renderTable(outputcat4(), colnames = FALSE, bordered = TRUE)
    
    
    r <- reactiveValues(sister4 = character())
    observeEvent(input$gosister4, {
      updateTextInput(session, "sister4", value = "")
    })
    
    outputsister4 <- eventReactive(input$gosister4, {
      if(input$sister4 == "суруйма"){
        print("Correct!")
      } else {
        print('Incorrect!')
      }
    })
    output$sister5 <- renderTable(outputsister4(), colnames = FALSE, bordered = TRUE)
    
    
    r <- reactiveValues(pen4 = character())
    observeEvent(input$gopen4, {
      updateTextInput(session, "pen4", value = "")
    })
    
    outputpen4 <- eventReactive(input$gopen4, {
      if(input$pen4 == "олорума"){
        print("Correct!")
      } else {
        print('Incorrect!')
      }
    })
    output$pen5 <- renderTable(outputpen4(), colnames = FALSE, bordered = TRUE)
    
  
  ### dictionary 
  r <- reactiveValues(word = character())
  observeEvent(input$goword, {
    updateTextInput(session, "word", value = "")
  })
  
  outputword <- eventReactive(input$goword, {
    if(input$word %in% sakha_dict$en){
      for (w in 1:length(sakha_dict$sah)) {
        for (i in 1:length(sakha_dict$en))
          if(input$word == sakha_dict$en[i])
            dict_POS[[length(dict_POS) + 1]] <- paste(sakha_dict$en[i], " - ", sakha_dict$sah[i])
        dict_POS1 <- unique(dict_POS)
        paste(dict_POS1, collapse = '\n') %>% cat()
        break
      }
    } else {
      cat(noquote('Not in the dictionary'))
    }
    
  })
  output$word1 <- renderPrint({outputword()})

}


