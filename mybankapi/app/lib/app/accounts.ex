defmodule LegacyRoutes do
  defmacro import do
    quote do
      post "/", PageController, :index
      try do if (err) throw err;
       def account = req.body;

     fs.readFile(global.fileName, "utf8", (err, data) => {
    try {
      if (err) throw err;

      def json = JSON.parse(data);
      account = { id: json.nextId, ...account };
      json.nextId++;
      json.accounts.push(account);
      fs.writeFile(global.fileName, JSON.stringify(json), (err) => {
        if (err) {
          res.status(400).send({ error: err.message });
        } else {
          res.end();
        }
      });
     catch (err) 
      res.status(400).send({ error: err.message });
    end
  end

defmodule LegacyRoutes do
  defmacro import do
    quote do
      get "/", PageController, :index
      try do if (err) throw err;
       def json = JSON.parse(data);
      delete json.nextId;
      res.send(json);
     catch (err) 
      res.status(400).send({ error: err.message });
    end
  end
end

defmodule LegacyRoutes do
  defmacro import do
    quote do
      get "/:id", PageController, :index
      try do if (err) throw err;
         def json = JSON.parse(data);
         def account = json.accounts.find(
        (account) => account.id === parseInt(req.params.id, 10)
      );
      if (account) {
        res.send(account);
      } else {
        res.end();
      }
     catch (err) 
      res.status(400).send({ error: err.message });
    end
  end
end

  defmacro import do
    quote do
      delete "/:id", PageController, :index
      try do if (err) throw err;
          if (err) throw err;
          def json = JSON.parse(data);
          def accounts = json.accounts.filter(
         (account) => account.id !== parseInt(req.params.id, 10)
      );
      json.accounts = accounts;

      fs.writeFile(global.fileName, JSON.stringify(json), (err) => {
        if (err) {
          res.status(400).send({ error: err.message });
        } else {
          res.end();
        }
     catch (err) 
      res.status(400).send({ error: err.message });
    end
  end
end

  defmacro import do
    quote do
      put "/:id", PageController, :index
      try do if (err) throw err;
          fs.readFile(global.fileName, "utf8", (err, data) => {
    try {
      if (err) throw err;

      def json = JSON.parse(data);
      def oldIndex = json.accounts.findIndex(
        (account) => account.id === newAccount.id
      );
      json.accounts[oldIndex].name = newAccount.name;
      json.accounts[oldIndex].balance = newAccount.balance;

      fs.writeFile(global.fileName, JSON.stringify(json), (err) => {
        if (err) {
          res.status(400).send({ error: err.message });
        } else {
          res.end();
        }
     catch (err) 
      res.status(400).send({ error: err.message });
    end
  end
end


  defmacro import do
    quote do
      put "/", PageController, :index
        def newAccount = req.body;
      try do if (err) throw err;
          if (err) throw err;

      def json = JSON.parse(data);
      def oldIndex = json.accounts.findIndex(
        (account) => account.id === newAccount.id
      );
      json.accounts[oldIndex].name = newAccount.name;
      json.accounts[oldIndex].balance = newAccount.balance;

      fs.writeFile(global.fileName, JSON.stringify(json), (err) => {
        if (err) {
          res.status(400).send({ error: err.message });
        } else {
          res.end();
        }
      });
     catch (err) 
      res.status(400).send({ error: err.message });
    end
  end
end


  defmacro import do
    quote do
      post "/transaction", PageController, :index
         def params = req.body;

  fs.readFile(global.fileName, "utf8", (err, data) => {
    try {
      if (err) throw err;

      def json = JSON.parse(data);
      def index = json.accounts.findIndex(
        (account) => account.id === params.id
      );

      if (params.value < 0 && json.accounts[index].balance + params.value < 0) {
        throw new Error("Não há saldo o suficiente");
      }
      json.accounts[index].balance += params.value;

      fs.writeFile(global.fileName, JSON.stringify(json), (err) => {
        if (err) {
          res.status(400).send({ error: err.message });
        } else {
          res.send(json.accounts[index]);
        }
      });
     catch (err) 
      res.status(400).send({ error: err.message });
    end
  end
end




