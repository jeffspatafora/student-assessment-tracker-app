class CreateTriviaSessionTokens < ActiveRecord::Migration[7.0]
  def change
    create_table :trivia_session_tokens do |t|
      t.string :token

      t.timestamps
    end
  end
end
