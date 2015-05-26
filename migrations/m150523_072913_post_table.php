<?php

use yii\db\Schema;
use yii\db\Migration;

class m150523_072913_post_table extends Migration
{
    public function up()
    {
        $this->createTable('{{%post}}', [
            'id' => Schema::TYPE_PK,
            'created_at' => Schema::TYPE_TIMESTAMP,
            'title' => Schema::TYPE_TEXT . ' NOT NULL',
            'desc' => Schema::TYPE_TEXT . ' NOT NULL',
        ]);
    }

    public function down()
    {
        $this->dropTable('{{%post}}');
    }
}
