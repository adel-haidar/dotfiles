return {
  "tpope/vim-dadbod",
  "kristijanhusak/vim-dadbod-completion",
  "kristijanhusak/vim-dadbod-ui",
  "vim-scripts/dbext.vim",

  config = function()
    vim.g.dbs = {

      CSS = '!~/h2_adapter.sh -url "jdbc:h2:file:/Users/adel.haidar/dev/apoBank/customer-self-services/customer-self-services-service/db/customer-self-services;DB_CLOSE_DELAY=-1;AUTO_SERVER=TRUE" -user customer-self-services -password customer-self-services',
      -- CSS = 'jdbc:java -cp /Users/adel.haidar/.h2/h2-2.3.232.jar org.h2.tools.Shell -url "jdbc:h2:file:/Users/adel.haidar/dev/apoBank/customer-self-services/customer-self-services-service/db/customer-self-services;DB_CLOSE_DELAY=-1;AUTO_SERVER=TRUE" -user customer-self-services -password customer-self-services',
      -- dbext_default_profile_h2 = "type=jdbc;driver=org.h2.Driver;url=jdbc:h2:file:/Users/adel.haidar/dev/apoBank/customer-self-services/customer-self-services-service/db/customer-self-services;DB_CLOSE_DELAY=-1;AUTO_SERVER=TRUE;user=customer-self-services;password=customer-self-services;classpath=/Users/adel.haidar/.h2/h2-2.3.232.jar",
    }
  end,
  event = "VeryLazy", -- Load dadbod when Neovim starts, but defer its loading until needed
}
