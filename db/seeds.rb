categories = Category.create([
                               { title: 'HTML' },
                               { title: 'CSS' },
                               { title: 'Javascript' },
                               { title: 'Ruby' },
                               { title: 'Rails' }
                             ])                  

users = User.create([
                      { username: 'username1', email: 'username1@mail.com' },
                      { username: 'username2', email: 'username2@mail.com' },
                      { username: 'username3', email: 'username3@mail.com' }
                    ])

tests = Test.create([
                      { category_id: categories[0].id, author_id: 1, title: 'HTML basics' },
                      { category_id: categories[1].id, author_id: 1, title: 'CSS animations', level: 1 },
                      { category_id: categories[2].id, author_id: 1, title: 'Async functions', level: 2 },
                      { category_id: categories[3].id, author_id: 1, title: 'Ruby basics' },
                      { category_id: categories[4].id, author_id: 1, title: 'Rails models', level: 1 }
                    ])

questions = Question.create([
                              { test_id: tests[0].id, body: 'Choose the correct HTML element for the largest heading:' },
                              { test_id: tests[1].id, body: 'Which property specifies a delay for the start of an animation?' },
                              { test_id: tests[2].id, body: 'What is the operator used to wait for a promise to resolve or reject?' },
                              { test_id: tests[3].id, body: 'What is the superclass for the Integer class?' },
                              { test_id: tests[4].id, body: 'How are instances of the model class represented in the database?' }
                            ])

answers = Answer.create([
                          { question_id: questions[0].id, body: '<h1>', correct: true },
                          { question_id: questions[1].id, body: 'animation-delay', correct: true },
                          { question_id: questions[2].id, body: 'await', correct: true },
                          { question_id: questions[3].id, body: 'Numeric', correct: true },
                          { question_id: questions[4].id, body: 'As a row in a table', correct: true }
                        ]) 
