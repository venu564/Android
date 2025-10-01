package gsg.dani.songs.db;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import gsg.dani.songs.Index;
import gsg.dani.songs.R;
import gsg.dani.songs.Songs;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DBinRAW extends SQLiteOpenHelper {
    private static final String SONGSTABLE = "Table_indexx";
    private final Context myContext;
    private SQLiteDatabase myDataBase;
    private static String DB_PATH = "/data/data/gsg.dani.songs/databases/";
    private static String DB_NAME = "gsgsongs.db";

    public DBinRAW(Context context) {
        super(context, DB_NAME, (SQLiteDatabase.CursorFactory) null, 1);
        this.myContext = context;
    }

    public void createDataBase(Context myContext) throws Resources.NotFoundException, IOException {
        boolean dbExist = checkDataBase(myContext);
        if (!dbExist) {
            getReadableDatabase();
            close();
            try {
                copyDataBase();
            } catch (IOException e) {
                throw new Error("______Error copying database");
            }
        }
    }

    public boolean checkDataBase(Context myContext) {
        File dbFile = myContext.getDatabasePath(DB_PATH + DB_NAME);
        return dbFile.exists();
    }

    private void copyDataBase() throws Resources.NotFoundException, IOException {
        InputStream myInput = this.myContext.getResources().openRawResource(R.raw.gsgsongs);
        String outFileName = DB_PATH + DB_NAME;
        OutputStream myOutput = new FileOutputStream(outFileName);
        byte[] buffer = new byte[1024];
        while (true) {
            int length = myInput.read(buffer);
            if (length > 0) {
                myOutput.write(buffer, 0, length);
            } else {
                myOutput.flush();
                myOutput.close();
                myInput.close();
                return;
            }
        }
    }

    public SQLiteDatabase openDataBase() throws SQLException {
        String myPath = DB_PATH + DB_NAME;
        SQLiteDatabase sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(myPath, null, 0);
        this.myDataBase = sQLiteDatabaseOpenDatabase;
        return sQLiteDatabaseOpenDatabase;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public synchronized void close() {
        if (this.myDataBase != null) {
            this.myDataBase.close();
        }
        super.close();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase db) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
    }

    public List<StringsDetails> getIndexTable() {
        String selectQuery;
        List<StringsDetails> contactList = new ArrayList<>();
        String name = Index.INSTANCE.getBOOKNAME();
        int num = Index.INSTANCE.getTOTALNUMBERS();
        String Search_string = Index.INSTANCE.getSearch_String();
        String Column_Name = Index.INSTANCE.getColumn_Name();
        if (name.equals("Tel_Song_Name")) {
            selectQuery = "select Number," + name + " from SongBook where " + Column_Name + " like '%" + Search_string + "' order by " + name + " limit " + num;
        } else {
            selectQuery = "select Number," + name + " from SongBook where " + Column_Name + " like '%" + Search_string + "' order by Number limit " + num;
        }
        Log.e("___DB QUERY", selectQuery);
        SQLiteDatabase db = getWritableDatabase();
        Cursor cursor = db.rawQuery(selectQuery, null);
        if (cursor.moveToFirst()) {
            do {
                StringsDetails contact = new StringsDetails();
                contact.setId(Integer.parseInt(cursor.getString(0)));
                contact.setSongName(cursor.getString(1));
                contactList.add(contact);
            } while (cursor.moveToNext());
            cursor.close();
        }
        db.close();
        return contactList;
    }

    public List<StringsDetails> getSongs() {
        List<StringsDetails> contactList = new ArrayList<>();
        int num = Songs.INSTANCE.getSONGNUMBER();
        String name = Songs.INSTANCE.getBOOKNAME();
        String selectQuery = "select Number," + name + " from SongBook where Number like '" + num + "'";
        Log.e("DB QUERY", selectQuery);
        SQLiteDatabase db = getWritableDatabase();
        Cursor cursor = db.rawQuery(selectQuery, null);
        if (cursor.moveToFirst()) {
            do {
                StringsDetails contact = new StringsDetails();
                contact.setId(Integer.parseInt(cursor.getString(0)));
                contact.setSongName(cursor.getString(1));
                contactList.add(contact);
            } while (cursor.moveToNext());
            cursor.close();
        }
        db.close();
        return contactList;
    }

    public void deleteHOSPIATL(StringsDetails contact) {
        SQLiteDatabase db = getWritableDatabase();
        db.delete(SONGSTABLE, null, null);
        db.close();
    }
}