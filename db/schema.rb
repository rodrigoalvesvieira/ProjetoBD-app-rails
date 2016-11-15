# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161113175121) do

  create_table "BaixasEstoque", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "produto_id",                                      null: false
    t.datetime "criado_em",  default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.integer  "qtdAtual"
  end

  create_table "Conta", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "duracao",                                            null: false
    t.integer  "numeroMesa",                                         null: false
    t.integer  "qtdClientes",                                        null: false
    t.datetime "criado_em",     default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "atualizado_em", default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "Estoque", primary_key: ["id", "transacao"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "id",                     null: false
    t.integer "qtdItem",    default: 0, null: false
    t.integer "transacao",              null: false
    t.integer "produto_id"
    t.index ["transacao"], name: "fk_Estoque_Transacao_idx", using: :btree
  end

  create_table "Item", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome",           limit: 45,                                      null: false
    t.integer  "limiar",                                                         null: false
    t.datetime "prazo_validade"
    t.datetime "criado_em",                 default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "atualizado_em",             default: -> { "CURRENT_TIMESTAMP" }
    t.integer  "estoque",                                                        null: false
    t.index ["estoque"], name: "fk_Item_Estoque_idx", using: :btree
  end

  create_table "Pedido", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "observacao",                                         null: false
    t.datetime "criado_em",     default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "atualizado_em", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.integer  "conta",                                              null: false
    t.integer  "produto",                                            null: false
    t.index ["conta"], name: "fk_Pedido_Conta_idx", using: :btree
    t.index ["produto"], name: "fk_Pedido_Produto_idx", using: :btree
  end

  create_table "Produto", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome",          limit: 45,                                                               null: false
    t.string   "descricao",                                                                              null: false
    t.decimal  "preco",                    precision: 10, scale: 6,                                      null: false
    t.datetime "criado_em",                                         default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "atualizado_em",                                     default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "Receitas", primary_key: ["produto", "item"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "produto", null: false
    t.integer "item",    null: false
    t.index ["item"], name: "fk_Produto_has_Item_Item1_idx", using: :btree
    t.index ["produto"], name: "fk_Produto_has_Item_Produto1_idx", using: :btree
  end

  create_table "Transacao", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "formaPagamento", limit: 8,                                                                null: false
    t.decimal  "valor",                     precision: 10, scale: 6,                                      null: false
    t.datetime "criado_em",                                          default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "atualizado_em",                                      default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string   "descricao",                                                                               null: false
    t.decimal  "saque",                     precision: 10, scale: 6
    t.string   "tipo",           limit: 15,                                                               null: false
    t.integer  "conta",                                                                                   null: false
    t.index ["conta"], name: "fk_Transacao_Conta_idx", using: :btree
  end

  create_table "User", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome",               limit: 45,                                      null: false
    t.string   "email",              limit: 45,                                      null: false
    t.string   "encrypted_password", limit: 45,                                      null: false
    t.datetime "criado_em",                     default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "atualizado_em",                 default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string   "funcao",             limit: 11,                                      null: false
  end

  create_table "Usuarios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "login",    null: false
    t.string  "password", null: false
    t.boolean "admin",    null: false
  end

  create_table "Utilizacoes", primary_key: ["produto", "estoque"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "produto", null: false
    t.integer "estoque", null: false
    t.index ["estoque"], name: "fk_Produto_has_Estoque_Estoque_idx", using: :btree
    t.index ["produto"], name: "fk_Produto_has_Estoque_Produto_idx", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "login"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "Estoque", "Transacao", column: "transacao", name: "fk_Estoque_Transacao"
  add_foreign_key "Item", "Estoque", column: "estoque", name: "fk_Item_Estoque"
  add_foreign_key "Pedido", "Conta", column: "conta", name: "fk_Pedido_Conta"
  add_foreign_key "Pedido", "Produto", column: "produto", name: "fk_Pedido_Produto"
  add_foreign_key "Receitas", "Item", column: "item", name: "fk_Produto_has_Item_Item1"
  add_foreign_key "Receitas", "Produto", column: "produto", name: "fk_Produto_has_Item_Produto1"
  add_foreign_key "Transacao", "Conta", column: "conta", name: "fk_Transacao_Conta"
  add_foreign_key "Utilizacoes", "Estoque", column: "estoque", name: "fk_Produto_has_Estoque_Estoque"
  add_foreign_key "Utilizacoes", "Produto", column: "produto", name: "fk_Produto_has_Estoque_Produto"
end
