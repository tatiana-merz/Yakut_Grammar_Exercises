ui <- fluidPage(title = "",
                
                setBackgroundColor(
                  color = c("ghostwhite", "#e1e9e1"),
                  gradient = "linear",
                  direction = "bottom",
                ),
                
  includeCSS("www/custom3.css"),
  
  navbarPage(title=div(img(src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Flag_of_Sakha.svg/1200px-Flag_of_Sakha.svg.png",
                           width = 50, height = 30,
                           style = "position: relative;
                                      top: -7px;"), ""),
            
             tabPanel(title = "The Yakut (Sakha) Language",
                        
                        mainPanel(width = "100%",
                          h1("Introducing Yakut",align = "center"),
                          p("The Yakut language, also known as Sakha, 
                            is a Turkic language with around 450,000 native speakers, mainly spoken in the Sakha (Yakut) Republic, 
                            a federal republic in the Russian Federation."),
                          p("Yakut is the official language of the republic along with Russian.
                            Both languages are used as a medium of education and media. Most Yakuts are bilingual but there is a small 
                            percentage of Russian-speaking residents who are proficient in Yakut."),
                          p("Bibliographic database of the world's lesser-known languages", tags$a(href="https://glottolog.org/resource/languoid/id/yaku1245", "Glottolog"), "claims that AES status of Yakut is threatened (60 percent certain, based on the evidence available)."),
                          
                          br(),
                          br(),
                          fluidRow(
                            column(12, align="center",
                                   div(style="display: inline-block;",img(src="Yakut.png", height=200, width=350)),
                                   div(style="display: inline-block;",img(src="SakhaYakutia.png", height=200, width=350)),
                            ),
                          ),
                          )
             ),

### new tab
# Show n-grams
tabPanel(title = "Language Discription",
         mainPanel(width = "100%", 
                   
           h1("Morphology",align = "center"),
           p("The sound system of Yakut is fairly typical for Turkic languages. 
           It is characterized by vowel harmony, a type of phonological process that places limitations on which vowels may be found near each other in a word. 
           There are two kinds of vowels — front vowels, which are produced at the front of the mouth, e.g., /i/, /e/, 
           and back vowels, produced at the back of the mouth, e.g., /u/, /o/. Yakut has a simple consonant system. 
           The consonants /f/, /ts/, /ʃ/ occur exclusively in Russian loanwords. There are few consonant clusters, except in Russian loanwords. 
           Consonant clusters in loanwords are often broken up by an inserted vowel, e.g., Russian krai ‘district’ becomes kiraai in Yakut. 
           Stress in Yakut words is normally placed on the final syllable with a few exceptions. 
           The placement of the original stress in loanwords is usually preserved."),
           
           br(),
           
           h1("Grammar", align = "center"),
           p("Like all Turkic languages, Yakut is agglutinative, i.e., grammatical relations are indicated by the addition of suffixes to stems. 
           There is a one-to-one relationship between a suffix and a meaning, suffixes are placed together one after another. 
           Postpositions are more common in Yakut than prepositions to signal certain grammatical relationships. 
           There are two declensions: singular and possessive. Possession is marked by suffixes. 
           Yakut lacks the genitive and locative cases that exist in all other Turkic languages. 
           The case system includes Nominative, Dative, Accusative, Instrumental, Comitative, Ablative, Partitive, and two Comparative cases."),
           p("There are other grammatical features of the language such as lack of definite and indefinite articles; 
           3rd person singular pronouns do not distinguish gender; personal pronouns are not declined; 
           usage of special class of auxiliary nouns to express spatial relations; presence of evidential markers; 
           possessive forms are represented by 58 morphological indicators and others (Korkina, 1982: 129)."),
           p("Yakut nouns are marked for number (singular and plural). Nouns in plural forms have the postfix –lar in 16 forms, e.g., mas ‘tree’ and mastar ‘trees’."),
         
           br(),
           
           h1('Alphabet', align ='center'),
           p("Yakut is written using the Cyrillic script. The alphabet consists of Russian letters and 5 additional letters: Ҕҕ, Ҥҥ, Өө, Һһ, Үү."),
           
           div(img(src = "Alphabet.jpg", height = 250, width = 550), style="text-align: center;"),
           br(),
           
           )
),

tabPanel(title = "English-Yakut dictionary",
         fluidRow(align="center",#style = "border-style: solid; border-width: 5px; border-color: pink",
                  mainPanel(width = "100%",
                            h1("Dictionary",align = "center"),
                            br(),
                            p("The dictionary countains 2396 words to be translated from English to Yakut"),
                            
                            div(class="set2",style="font-size:16px;",
                                br(),
                                textInput("word", "Enter a word in English"), 
                                actionButton("goword", "search"),
                                br(),
                                verbatimTextOutput("word1")),
                  ))),

tabPanel(title = "Grammar Exercises",
         mainPanel(align="center", width = "100%",style = "border-style: solid; border-color: #EAE7ED",
                   h1("Grammar Exercises"),
                   br(),
                   fluidRow(
                     div(class="set1",
                         
                         sidebarPanel(
                           h5("учуутал - teacher"),
                           h5("тэтэрээт - notebook"),
                           h5("кинигэ - book"),
                           h5("дуоскаҕа - blackboard"),
                           h5("олоппоско - chair"),
                           h5("нууччалыы - in Russian"),
                           h5("кинигэ - book"),
                           h5("оҕо - child"),
                         ),
                         
                         
                         sidebarPanel(
                           h5('көр - to look/see'),
                           h5('олор - to sit'),
                           h5('кэпсэт - to talk'),
                           h5('бар - to go'),
                           h5('суруй - to write'),
                           h5('үөрэн - to teach'),),
                         
                         sidebarPanel(
                           h5("дьиэҕэ - at home"),
                           h5('үчүгэй - good'),
                           h5('түргэнник - fast'),
                           h5('манна - here'),
                           h5('бу - this, these'),
                           h5('кинилэр - they'),
                           h5('Айаана - proper name'),
                           h5('Кэскил - proper name'),),
                         
                     )),
                   br(),
                   p(strong("FORM OF THE THIRD-PERSON PRESENT SINGULAR")),
                   p("Formed with the help of the affix -ар, which yields four variants of the vowel depending on the final consonant of the stem: -ар, -эр, -ор, -өр."),
                   h5("Change of the vowel in the affix occurs in accordance with the second observation of the law of vowel harmony."),
                   h5("Examples: олорор - sits, көрөр - sees"),
                   fluidRow(align="center",
                            div(class="set3",
                                sidebarPanel(
                                  textInput("cat", "Учуутал тэтэрээт (көр)"), 
                                  actionButton("check1", "check"),
                                  textOutput("cat"),
                                  br(),
                                  tableOutput("cat1")),
                                
                                sidebarPanel(
                                  textInput("sister", "Айаана үчүгэйдик (үөрэн)"), 
                                  actionButton("gosister", "check"),
                                  textOutput("sister"),
                                  br(),
                                  tableOutput("sister1")),
                                
                                sidebarPanel(
                                  textInput("pen", "Кэскил олоппоско (олор)"), 
                                  actionButton("gopen", "check"),
                                  textOutput("pen"),
                                  br(),
                                  tableOutput("pen1")),
                                br(),
                                br(),
                                
                            )),
                   p(strong("THE FORM OF THE PLURAL AFFIX")),
                   p("The plural is formed by means of the affix -лар. This affix yields 16 variants: -лар; -тар, -дар, -нар."),
                   h5("Examples: кинигэлэр - books, көтөрдөр - birds"),
                   h5("Note: Additional disrciption can be found ", tags$a(href="https://github.com/UniversalDependencies/docs/blob/pages-source/_sah/index.md", "here")),
                   fluidRow(
                     div(class="set2",
                         sidebarPanel(
                           textInput("cat2", "Манна оҕо (олорор)"),
                           actionButton("check2", "check"),
                           textOutput("cat2"),
                           br(),
                           tableOutput("cat3")),
                         
                         sidebarPanel(
                           textInput("sister2", "Бу (кинигэ) үчүгэй"),
                           actionButton("gosister2", "check"),
                           textOutput("sister2"),
                           br(),
                           tableOutput("sister3")),
                         
                         sidebarPanel(
                           textInput("pen2", "Кинилэр нууччалыы (кэпсэтэр)"),
                           actionButton("gopen2", "check"),
                           textOutput("pen2"),
                           br(),
                           tableOutput("pen3")),
                         br(),
                         br(),
                     )),
                   
                   p(strong("THE NEGATIVE FORM OF THE IMPERATIVE VERB")),
                   p("Imperative verbs in the second-person singular are formed by affixes -(а/ы)ма, -(и/ү)мэ, -мо, -мө added to the stem."),
                   h5("Examples: аһаама - don't eat, кэлимэ - don't come"),
                   fluidRow(
                     div(class="set1",
                         
                         sidebarPanel(
                           textInput("cat4", "Түргэнник (бар)"),
                           actionButton("check4", "check"),
                           textOutput("cat4"),
                           br(),
                           tableOutput("cat5")),
                         
                         sidebarPanel(
                           textInput("sister4", "Дуоскаҕа (суруй)"),
                           actionButton("gosister4", "check"),
                           textOutput("sister4"),
                           br(),
                           tableOutput("sister5")),
                         
                         sidebarPanel(
                           textInput("pen4", "Дьиэҕэ (олор)"), 
                           actionButton("gopen4", "check"),
                           textOutput("pen4"),
                           br(),
                           tableOutput("pen5")),
                         
                     )),
         ))
))




