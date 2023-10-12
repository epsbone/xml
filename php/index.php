<?php

$mysqli = new mysqli("localhost", "root", "", "dbbookstore");

if ($mysqli->connect_errno) {
    echo "Connect failed " . $mysqli->connect_error;
    exit();
} else {
    echo "Connected";
}

function createXMLfile($books)
{
    $filePath = 'files/book.xml';
    $dom = new DOMDocument('1.0', 'utf-8');
    $root = $dom->createElement('books');

    for ($i = 0; $i < count($books); $i++) {
        $bookId = $books[$i]['id'];
        $bookName = htmlspecialchars($books[$i]['title']);
        $bookAuthor = $books[$i]['author_name'];
        $bookPrice = $books[$i]['price'];
        $bookISBN = $books[$i]['ISBN'];
        $bookCategory = $books[$i]['category'];

        $book = $dom->createElement('book');
        $book->setAttribute('id', $bookId);

        $name = $dom->createElement('title', $bookName);
        $book->appendChild($name);

        $author = $dom->createElement('author', $bookAuthor);
        $book->appendChild($author);

        $price = $dom->createElement('price', $bookPrice);
        $book->appendChild($price);

        $isbn = $dom->createElement('ISBN', $bookISBN);
        $book->appendChild($isbn);

        $category = $dom->createElement('category', $bookCategory);
        $book->appendChild($category);

        $root->appendChild($book);
    }

    $dom->appendChild($root);
    $dom->save($filePath);
}

function updateXMLfile($mysqli)
{
    $sql = "SELECT id, title, author_name, price, ISBN, category FROM books";
    if ($result = $mysqli->query($sql)) {
        $books = $result->fetch_all(MYSQLI_ASSOC);
        if (count($books)) {
            createXMLfile($books);
            echo "<br /><br /> <h3>XML file updated successfully.
                  <br />Click <a href='files/book.xml'>here</a> to open</h3>";
        } else {
            echo "<br/> <br/> <h3>No record found</h3>";
        }
        $result->free();
    }
}

// Initially generate the XML file
updateXMLfile($mysqli);

// Close the connection
$mysqli->close();
?>
