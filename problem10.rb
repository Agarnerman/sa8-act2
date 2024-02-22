class Quiz
    def initialize(topics)
      @topics = topics
    end
  
    def create_question_methods
      @topics.each do |topic|
        method_name = "question_about_#{topic}"
        define_singleton_method(method_name.to_sym) do
          puts "This is a question about #{topic}."
        end
      end
    end
  
    def run_quiz
      create_question_methods
      @topics.each do |topic|
        send(:"question_about_#{topic}")  # Dynamically call question methods
      end
    end
  end
  
  # Example usage
  topics = ["math", "history", "geography"]
  quiz = Quiz.new(topics)
  quiz.run_quiz
  