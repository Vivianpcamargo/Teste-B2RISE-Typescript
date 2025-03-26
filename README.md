# :bookmark: Teste B2RISE

:label: Tecnologia Principal: Typescript
<br> :luggage: Banco de Dados: SQL
<br> :page_facing_up: Padronização: Clean Code

## :open_book: Exercícios

### **1. Testes de TypeScript**

#### **1.1 Manipulação de Tipos e Generics**

Implemente uma função que recebe um array de objetos e retorna um novo array contendo apenas os valores de uma chave específica. Utilize Generics para garantir a tipagem.

**Exemplo:**

```typescript
const data = [
  { id: 1, name: "Alice" },
  { id: 2, name: "Bob" },
];
const result = extractValues(data, "name");
```

**Saída esperada:** `['Alice', 'Bob']`

---

#### **1.2 Validação e Tipagem com Union Types**

Implemente uma função que recebe uma string representando uma operação matemática (`add`, `subtract`, `multiply`, `divide`) e dois números. A função deve realizar a operação correspondente e lançar um erro caso a operação não seja suportada.

**Exemplo:**

```typescript
calculate("add", 10, 5); // 15
calculate("divide", 10, 0); // Error: Division by zero
```

---

#### **1.3 Imutabilidade e Manipulação de Arrays**

Implemente uma função que recebe uma lista de números e retorna uma nova lista onde todos os números negativos são transformados em positivos, sem modificar a lista original.

**Exemplo:**

```typescript
const numbers = [-1, 2, -3, 4];
const result = makeAllPositive(numbers);
```

**Saída esperada:** `[1, 2, 3, 4]`

---

### **2. Testes de SQL**

> [!WARNING]
> Faça as queries puras, sem o uso de qualquer framework. Utilize arquivos com extensão `.sql`

#### **2.1 Consulta com Agregação**

Dada a tabela `sales` com as colunas:

- `id` (INT)
- `product` (VARCHAR)
- `quantity` (INT)
- `price` (DECIMAL)

Escreva uma query para calcular a receita total (`quantity * price`) para cada produto, ordenando por receita total em ordem decrescente.

---

#### **2.2 Identificar Registros Duplicados**

Dada a tabela `users` com as colunas:

- `id` (INT)
- `email` (VARCHAR)
- `name` (VARCHAR)

Escreva uma query para identificar os emails que estão duplicados, juntamente com o número de ocorrências.

---

#### **2.3 Atualizar Dados Condicionalmente**

Dada a tabela `employees` com as colunas:

- `id` (INT)
- `name` (VARCHAR)
- `salary` (DECIMAL)

Escreva uma query para aumentar o salário em 10% para os empregados que ganham menos de 5000, mas não altere os outros.

---

#### 2.4 Consulta com JOIN Simples

Dadas as tabelas:
`orders`

- `id` (INT)
- `customer_id` (INT)
- `total` (DECIMAL)

`customers`

- `id` (INT)
- `name` (VARCHAR)
- `country` (VARCHAR)

Escreva uma query para listar o nome dos clientes e o total de compras realizadas, ordenando pelo total de compras em ordem decrescente. Inclua apenas os clientes que realizaram compras.

---

#### 2.5 Consulta com JOIN e Filtragem

Dadas as tabelas:

`products`

- `id` (INT)
- `name` (VARCHAR)
- `category_id` (INT)

`categories`

- `id` (INT)
- `name` (VARCHAR)

`sales`

- `id` (INT)
- `product_id` (INT)
- `quantity` (INT)

Escreva uma query para listar o nome da categoria, o nome do produto e a quantidade total vendida de cada produto. Filtre apenas as categorias que possuem mais de 100 unidades vendidas no total.

---

#### 2.6 Criação e Consulta de uma VIEW

Dada a tabela:

`transactions`

- `id` (INT)
- `account_id` (INT)
- `transaction_date` (DATE)
- `amount` (DECIMAL)

Crie uma view chamada monthly_summary que mostre o account_id, o mês (extraído de transaction_date), e o valor total das transações (soma de amount) agrupado por account_id e mês. Em seguida, escreva uma query para listar os resumos mensais apenas para contas que tiveram transações superiores a 10.000 em pelo menos um mês.

---

### **3. Testes de Clean Code**

#### **3.1 Refatoração de Código**

Dado o seguinte código, identifique e implemente as melhorias necessárias seguindo princípios de **Clean Code**:

```typescript
function processItems(items: any[]) {
  for (let i = 0; i < items.length; i++) {
    if (items[i].price > 100) {
      console.log(items[i].name + " is expensive");
    }
  }
}
```

---

#### **3.2 Refatoração de Lógica Complexa**

Dado o código abaixo, refatore para melhorar a legibilidade e modularidade:

```typescript
function calculateDiscount(price: number, isPremium: boolean): number {
  if (isPremium) {
    if (price > 100) {
      return price * 0.8;
    } else {
      return price * 0.9;
    }
  } else {
    if (price > 100) {
      return price * 0.9;
    } else {
      return price;
    }
  }
}
```

---

#### **3.3 Melhorando Nomes e Estrutura**

Refatore o código abaixo para melhorar a clareza dos nomes e a modularidade:

```typescript
function c(x: number[]): number[] {
  const r = [];
  for (let i = 0; i < x.length; i++) {
    if (x[i] % 2 === 0) {
      r.push(x[i] * 2);
    }
  }
  return r;
}
```

## :bar_chart: Rodando os Exercícios

- arquivos typescript:

```
tsc arquivo.ts
node arquivo.js
```

- arquivos sql:
  servidor online
