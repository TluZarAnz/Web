<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">x</th>
        <th scope="col">y</th>
        <th scope="col">r</th>
        <th scope="col">Результат</th>
        <th scope="col">Время</th>
        <th scope="col">Вр. вып.(мс)</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $reversed = array_reverse($_SESSION['history'], true);
    foreach ($reversed as $value) { ?>
        <tr>
            <td><?php echo $value[0] ?></td>
            <td><?php echo $value[1] ?></td>
            <td><?php echo $value[2] ?></td>
            <td><?php echo $value[3] ?></td>
            <td><?php echo $value[4] ?></td>
            <td><?php echo number_format($value[5], 10, ".", "")*1000000 ?></td>
        </tr>
    <?php }?>
    </tbody>
</table>