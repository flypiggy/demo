Sequel.migration do
  change do
    create_table(:users) do
      primary_key :id, :type=>Integer
      String :nickname
      Integer :age
      String :twitter
    end
  end
end

