package ru.rocketbank.core.manager;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.ContactsContract.CommonDataKinds.Email;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import android.provider.ContactsContract.RawContacts;
import android.support.v4.content.ContextCompat;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.facebook.internal.ServerProtocol;
import de.greenrobot.event.EventBus;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.events.ContactsEvent;
import ru.rocketbank.core.events.ErrorEvent;
import ru.rocketbank.core.events.InProgressEvent;
import ru.rocketbank.core.events.ResultPermissionEvent;
import ru.rocketbank.core.model.RequestPermissionEvent;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.core.model.contact.Contacts;
import ru.rocketbank.core.model.contact.DeviceContact;
import ru.rocketbank.core.model.contact.ServerContact;
import ru.rocketbank.core.model.contact.SyncContacts;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.network.model.ContactsSyncResponse;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.Manifest.permission;
import rx.Observable;
import rx.functions.Action1;
import rx.schedulers.Schedulers;
import rx.subjects.BehaviorSubject;

/* compiled from: ContactManager.kt */
public final class ContactManager {
    private final String CONTACTS_DIFFERENCE = "contacts_difference";
    private final String CONTACTS_HASH = "contacts_hash";
    private final Authorization authorization;
    private int contactsDifference;
    private File contactsFile;
    private String contactsHash;
    private final BehaviorSubject<ContactsEvent> contactsSubject = BehaviorSubject.create();
    private final Context context;
    private final EventBus eventBus;
    private final RocketAPI rocketAPI;
    private final RocketShortcutManager rocketShortcutManager;
    private SharedPreferences sharedPreferences;

    /* compiled from: ContactManager.kt */
    /* renamed from: ru.rocketbank.core.manager.ContactManager$2 */
    static final class C14612<T> implements Action1<Throwable> {
        public static final C14612 INSTANCE = new C14612();

        C14612() {
        }

        public final /* bridge */ /* synthetic */ void call(Object obj) {
            AnalyticsManager.logException((Throwable) obj);
        }
    }

    public ContactManager(Context context, RocketAPI rocketAPI, Authorization authorization, RocketShortcutManager rocketShortcutManager) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(rocketAPI, "rocketAPI");
        Intrinsics.checkParameterIsNotNull(authorization, "authorization");
        Intrinsics.checkParameterIsNotNull(rocketShortcutManager, "rocketShortcutManager");
        this.context = context;
        this.rocketAPI = rocketAPI;
        this.authorization = authorization;
        this.rocketShortcutManager = rocketShortcutManager;
        context = EventBus.getDefault();
        Intrinsics.checkExpressionValueIsNotNull(context, "EventBus.getDefault()");
        this.eventBus = context;
        this.eventBus.register(this);
        context = this.context.getPackageName();
        rocketAPI = this.context.getSharedPreferences(context, 0);
        Intrinsics.checkExpressionValueIsNotNull(rocketAPI, "context.getSharedPrefere…me, Context.MODE_PRIVATE)");
        this.sharedPreferences = rocketAPI;
        this.contactsDifference = this.sharedPreferences.getInt(this.CONTACTS_DIFFERENCE, 0);
        this.contactsHash = this.sharedPreferences.getString(this.CONTACTS_HASH, null);
        this.authorization.getUser().subscribe((Action1) new Action1<UserModel>() {
            public final /* bridge */ /* synthetic */ void call(Object obj) {
                UserModel userModel = (UserModel) obj;
                ContactManager contactManager = this;
                Intrinsics.checkExpressionValueIsNotNull(userModel, "userModel");
                ContactManager.access$reloadContactHash(contactManager, userModel.getContactsHash());
            }
        }, (Action1) C14612.INSTANCE);
        rocketAPI = this.context.getFilesDir();
        rocketShortcutManager = new StringBuilder();
        rocketShortcutManager.append(context);
        rocketShortcutManager.append("_contacts");
        this.contactsFile = new File(rocketAPI, rocketShortcutManager.toString());
    }

    public final RocketShortcutManager getRocketShortcutManager() {
        return this.rocketShortcutManager;
    }

    public final Observable<ContactsEvent> getContactsObservable() {
        BehaviorSubject behaviorSubject = this.contactsSubject;
        Intrinsics.checkExpressionValueIsNotNull(behaviorSubject, "contactsSubject");
        return behaviorSubject;
    }

    public final void onEventMainThread(ResultPermissionEvent resultPermissionEvent) {
        Intrinsics.checkParameterIsNotNull(resultPermissionEvent, "resultPermissionEvent");
        String[] permissions = resultPermissionEvent.getPermissions();
        if (permissions == null) {
            Intrinsics.throwNpe();
        }
        if (Intrinsics.areEqual(permissions[0], permission.READ_CONTACTS)) {
            resultPermissionEvent = resultPermissionEvent.getGrantResults();
            if (resultPermissionEvent == null) {
                Intrinsics.throwNpe();
            }
            if (resultPermissionEvent[0] == null && this.authorization.getUserImmediate() != null) {
                loadContacts(false);
            }
        }
    }

    public final void loadContacts(boolean z) {
        if (VERSION.SDK_INT < 23 || ContextCompat.checkSelfPermission(this.context, permission.READ_CONTACTS) == 0) {
            this.contactsSubject.onNext(new ContactsEvent(new InProgressEvent()));
            Observable.just(read(this.contactsFile, Contacts.class)).subscribeOn(Schedulers.io()).subscribe(new ContactManager$loadContacts$1(this));
            return;
        }
        if (z) {
            this.eventBus.post(new RequestPermissionEvent(new String[]{permission.READ_CONTACTS}));
        }
    }

    private final void onContactsLoaded(List<Long> list, List<Contact> list2) {
        this.authorization.getUser().observeOn(Schedulers.io()).subscribe(new ContactManager$onContactsLoaded$1(this, list2, list), (Action1) new ContactManager$onContactsLoaded$2(this));
    }

    private static <MODEL> MODEL read(java.io.File r3, java.lang.Class<? extends MODEL> r4) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = new com.google.gson.GsonBuilder;
        r0.<init>();
        r1 = java.lang.String.class;
        r1 = (java.lang.reflect.Type) r1;
        r2 = new ru.rocketbank.core.network.adapter.StringDeserializer;
        r2.<init>();
        r0 = r0.registerTypeAdapter(r1, r2);
        r0 = r0.create();
        r1 = new java.io.FileReader;	 Catch:{ Exception -> 0x0022 }
        r1.<init>(r3);	 Catch:{ Exception -> 0x0022 }
        r1 = (java.io.Reader) r1;	 Catch:{ Exception -> 0x0022 }
        r3 = r0.fromJson(r1, r4);	 Catch:{ Exception -> 0x0022 }
        goto L_0x0023;
    L_0x0022:
        r3 = 0;
    L_0x0023:
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.ContactManager.read(java.io.File, java.lang.Class):MODEL");
    }

    private final void reloadContacts() {
        this.contactsSubject.onNext(new ContactsEvent(new InProgressEvent()));
        Map arrayMap = new ArrayMap();
        Uri uri = Email.CONTENT_URI;
        Intrinsics.checkExpressionValueIsNotNull(uri, "ContactsContract.CommonDataKinds.Email.CONTENT_URI");
        getContactData(arrayMap, "data1", uri);
        uri = Phone.CONTENT_URI;
        Intrinsics.checkExpressionValueIsNotNull(uri, "ContactsContract.CommonDataKinds.Phone.CONTENT_URI");
        getContactData(arrayMap, "data1", uri);
        Observable.just(arrayMap).subscribeOn(Schedulers.io()).subscribe(new ContactManager$reloadContacts$1(this));
    }

    private final void getContactData(Map<Long, DeviceContact> map, String str, Uri uri) {
        Cursor query = this.context.getContentResolver().query(uri, new String[]{str, "contact_id", "display_name"}, null, null, null);
        if (query != null) {
            if (query.getCount() <= 0) {
                query.close();
                return;
            }
            str = query.getColumnIndex(str);
            int columnIndex = query.getColumnIndex("contact_id");
            int columnIndex2 = query.getColumnIndex("display_name");
            while (query.moveToNext()) {
                DeviceContact deviceContact;
                long j = query.getLong(columnIndex);
                if (map.containsKey(Long.valueOf(j))) {
                    Object obj = map.get(Long.valueOf(j));
                    if (obj == null) {
                        Intrinsics.throwNpe();
                    }
                    deviceContact = (DeviceContact) obj;
                } else {
                    DeviceContact deviceContact2 = new DeviceContact(j, query.getString(columnIndex2));
                    map.put(Long.valueOf(j), deviceContact2);
                    deviceContact = deviceContact2;
                }
                deviceContact.add(uri, query.getString(str));
            }
            query.close();
        }
    }

    private final int getContactsDifference() {
        ContentResolver contentResolver = this.context.getContentResolver();
        Uri uri = RawContacts.CONTENT_URI;
        String[] strArr = new String[1];
        int i = 0;
        strArr[0] = ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION;
        Cursor query = contentResolver.query(uri, strArr, null, null, null);
        if (query != null) {
            int columnIndex = query.getColumnIndex(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
            while (query.moveToNext()) {
                i += query.getInt(columnIndex);
            }
            query.close();
        }
        return i;
    }

    private static boolean write(java.io.File r3, java.lang.Object r4) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = new com.google.gson.GsonBuilder;
        r0.<init>();
        r1 = java.lang.String.class;
        r1 = (java.lang.reflect.Type) r1;
        r2 = new ru.rocketbank.core.network.adapter.StringDeserializer;
        r2.<init>();
        r0 = r0.registerTypeAdapter(r1, r2);
        r0 = r0.create();
        r1 = new java.io.FileWriter;	 Catch:{ Exception -> 0x0027 }
        r1.<init>(r3);	 Catch:{ Exception -> 0x0027 }
        r3 = r0.toJson(r4);	 Catch:{ Exception -> 0x0027 }
        r1.write(r3);	 Catch:{ Exception -> 0x0027 }
        r1.close();	 Catch:{ Exception -> 0x0027 }
        r3 = 1;
        goto L_0x0028;
    L_0x0027:
        r3 = 0;
    L_0x0028:
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.ContactManager.write(java.io.File, java.lang.Object):boolean");
    }

    public static final /* synthetic */ void access$handleReloadedContacts(ContactManager contactManager, Map map) {
        if (map.isEmpty()) {
            contactManager.contactsSubject.onNext(new ContactsEvent());
            return;
        }
        ContactsSyncResponse contactsSyncResponse = (ContactsSyncResponse) contactManager.rocketAPI.syncContacts(new SyncContacts(map.values())).toBlocking().single();
        if ((contactsSyncResponse != null ? contactsSyncResponse.getContacts() : null) != null) {
            if (contactsSyncResponse.getContactsHash() != null) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (ServerContact serverContact : contactsSyncResponse.getContacts()) {
                    Contact contact = new Contact();
                    contact.set(serverContact);
                    arrayList2.add(contact);
                    for (Number longValue : serverContact.getIds()) {
                        long longValue2 = longValue.longValue();
                        arrayList.add(Long.valueOf(longValue2));
                        DeviceContact deviceContact = (DeviceContact) map.get(Long.valueOf(longValue2));
                        if (deviceContact != null) {
                            ArrayList emails = contact.getEmails();
                            if (emails == null) {
                                Intrinsics.throwNpe();
                            }
                            emails.addAll(deviceContact.getEmails());
                            emails = contact.getPhones();
                            if (emails == null) {
                                Intrinsics.throwNpe();
                            }
                            emails.addAll(deviceContact.getPhones());
                            contact.setName(deviceContact.getName());
                        }
                    }
                }
                List list = arrayList2;
                Collections.sort(list, (Comparator) ContactManager$handleReloadedContacts$1.INSTANCE);
                List list2 = arrayList;
                contactManager.onContactsLoaded(list2, list);
                if (write(contactManager.contactsFile, new Contacts(list2, list)) != null) {
                    map = contactManager.getContactsDifference();
                    String contactsHash = contactsSyncResponse.getContactsHash();
                    contactManager.contactsDifference = map;
                    contactManager.contactsHash = contactsHash;
                    contactManager.sharedPreferences.edit().putInt(contactManager.CONTACTS_DIFFERENCE, map).apply();
                    map = contactManager.CONTACTS_HASH;
                    contactsHash = contactManager.contactsHash;
                    if (contactsHash == null) {
                        Intrinsics.throwNpe();
                    }
                    contactManager.sharedPreferences.edit().putString(map, contactsHash).apply();
                }
                return;
            }
        }
        contactManager.contactsSubject.onNext(new ContactsEvent(new ErrorEvent(null)));
    }

    public static final /* synthetic */ void access$reloadContactHash(ContactManager contactManager, String str) {
        Log.v("DataManager", "reloadContactHash");
        if (VERSION.SDK_INT >= 23) {
            int checkSelfPermission = ContextCompat.checkSelfPermission(contactManager.context, permission.READ_CONTACTS);
            if (checkSelfPermission != -1) {
                if (checkSelfPermission != 0) {
                    contactManager.eventBus.post(new RequestPermissionEvent(new String[]{permission.READ_CONTACTS}));
                    return;
                }
            }
        }
        if (contactManager.getContactsDifference() != contactManager.contactsDifference || (str != null && StringsKt__StringsJVMKt.equals(str, contactManager.contactsHash, true) == null)) {
            contactManager.reloadContacts();
        }
    }
}
