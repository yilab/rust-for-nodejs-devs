<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Nickel Todo</title>
    <style type="text/css">
    html, body, #app {
      margin: 0;
      padding: 0;
      width: 100%;
      height: 100%;
      position: relative;
    }
    .todos {
      margin: 10px;
    }
    .todo, .visibility-options, .add-todo {
      padding: 5px;
    }
    .todo a {
      color: #000000;
      text-decoration: none;
      font-weight: bold;
    }
    .todo.todo--completed a {
      text-decoration: line-through;
      color: #999;
      font-weight: 300;
    }
    a.todo__remove {
      color: #ff0000;
    }
    </style>
  </head>
  <body>
    <div class="todos">
      <h1>Todo list! {{visibility_filter}}</h1>
      {{#each todos}}
      {{#unless deleted}}
      {{#filter_todo}}
      <div class="todo{{#if completed}} todo--completed{{/if}}">
        <a href="/toggle/{{id}}" class="todo__title">{{title}}</a> -
        <a href="/remove/{{id}}" class="todo__remove">[X]</a>
      </div>
      {{/filter_todo}}
      {{/unless}}
      {{/each}}
      <div class="visibility-options">
        Show:
        <a href="/show/all">All</a> -
        <a href="/show/active">Active</a> -
        <a href="/show/completed">Completed</a>
      </div>
      <form class="add-todo" action="/" method="post">
        <input type="text" name="todo" />
        <input type="submit" value="Add todo" />
      </form>
    </div>

  </body>
</html>
