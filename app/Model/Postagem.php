<?php

class Postagem {

    public static function selecionaTodos() {
        $con = Connection::getConn();

        $sql = "SELECT * FROM postagem ORDER BY id DESC LIMIT 10";
        $sql = $con->prepare($sql);
        $sql->execute();

        $resultado = array();

        while ($row = $sql->fetchObject('Postagem')) {
            $resultado[] = $row;
        }

        if (!$resultado) {
            throw new Exception("Não foi encontrado nenhum registro no banco");
        }

        return $resultado;
    }

    public static function selecionaPorId($idPost) {
        $con = Connection::getConn();

        $sql = "SELECT * FROM postagem WHERE id = :id";
        $sql = $con->prepare($sql);
        $sql->bindValue(':id', $idPost, PDO::PARAM_INT);
        $sql->execute();

        $resultado = $sql->fetchObject('Postagem');

        return $resultado;
    }

    public static function insert($dadosPost) {
        if (empty($dadosPost['titulo']) OR empty($dadosPost['conteudo'])) {
            throw new Exception("Preencha todos os campos");

            return false;
        }

        $con = Connection::getConn();

        $sql = $con->prepare('INSERT INTO postagem (titulo, conteudo, autor) VALUES (:tit, :cont, :aut)');
        $sql->bindValue(':tit', $dadosPost['titulo']);
        $sql->bindValue(':cont', $dadosPost['conteudo']);
        $sql->bindValue(':aut', $dadosPost['autor']);
        $res = $sql->execute();

        if ($res == 0) {
            throw new Exception("Falha ao inserir publicação");

            return false;
        }

        return true;
    }

    public static function update($params) {
        $con = Connection::getConn();

        $sql = "UPDATE postagem SET titulo = :tit, conteudo = :cont,  autor = :aut WHERE id = :id";
        $sql = $con->prepare($sql);
         
        $sql->bindValue(':tit', $params['titulo']);
        $sql->bindValue(':cont', $params['conteudo']);
        $sql->bindValue(':aut', $params['autor']);
        $sql->bindValue(':id', $params['id']);
        $resultado = $sql->execute();

        if ($resultado == 0) {
            throw new Exception("Falha ao alterar publicação");

            return false;
        }

        return true;
    }

    public static function delete($id) {
        $con = Connection::getConn();

        $sql = "DELETE FROM postagem WHERE id = :id";
        $sql = $con->prepare($sql);
        $sql->bindValue(':id', $id);
        $resultado = $sql->execute();

        if ($resultado == 0) {
            throw new Exception("Falha ao deletar publicação");

            return false;
        }

        return true;
    }

}
