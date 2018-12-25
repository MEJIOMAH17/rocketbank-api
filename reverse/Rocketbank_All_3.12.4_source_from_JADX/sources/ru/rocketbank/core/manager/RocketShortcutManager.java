package ru.rocketbank.core.manager;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutInfo.Builder;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Build.VERSION;
import android.os.Bundle;
import com.bumptech.glide.Glide;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.core.utils.RocketAction;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: RocketShortcutManager.kt */
public final class RocketShortcutManager {
    public static final Companion Companion = new Companion();
    public static final String KEY_ACTION = "KEY_ACTION";
    public static final String KEY_EXTRAS = "KEY_EXTRAS";
    public static final String SHORTCUT_PHONE = "phone";
    public static final String SHORTCUT_REFILL = "refill";
    public static final String SHORTCUT_SUPPORT = "support";
    private final Context context;
    private ShortcutManager shortcutManager;
    private Class<?> startupActivity;

    /* compiled from: RocketShortcutManager.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public RocketShortcutManager(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
        if (VERSION.SDK_INT >= 25) {
            this.shortcutManager = (ShortcutManager) this.context.getSystemService(ShortcutManager.class);
        }
    }

    public final void setStartupActivity(Class<?> cls) {
        this.startupActivity = cls;
    }

    public final void createSupportShortcut() {
        if (VERSION.SDK_INT >= 25) {
            addShortcuts(CollectionsKt__CollectionsKt.listOf((Object) new Builder(this.context, SHORTCUT_SUPPORT).setShortLabel(this.context.getString(C0859R.string.support_shortcut_short_label)).setLongLabel(this.context.getString(C0859R.string.support_shortcut_long_label)).setIcon(Icon.createWithResource(this.context, C0859R.drawable.scl_support)).setIntent(new Intent(this.context, this.startupActivity).setAction(RocketAction.ACTION_SUPPORT)).build()));
        }
    }

    public final void createRefillShortcut() {
        if (VERSION.SDK_INT >= 25) {
            addShortcuts(CollectionsKt__CollectionsKt.listOf((Object) new Builder(this.context, SHORTCUT_REFILL).setShortLabel(this.context.getString(C0859R.string.refill_shortcut_short_label)).setLongLabel(this.context.getString(C0859R.string.refill_shortcut_long_label)).setIcon(Icon.createWithResource(this.context, C0859R.drawable.scl_refill)).setIntent(new Intent(this.context, this.startupActivity).setAction(RocketAction.ACTION_REFILL)).build()));
        }
    }

    public final void createPhoneShortcut() {
        if (VERSION.SDK_INT >= 25) {
            addShortcuts(CollectionsKt__CollectionsKt.listOf((Object) new Builder(this.context, SHORTCUT_PHONE).setShortLabel(this.context.getString(C0859R.string.phone_shortcut_short_label)).setLongLabel(this.context.getString(C0859R.string.phone_shortcut_long_label)).setIcon(Icon.createWithResource(this.context, C0859R.drawable.scl_telephone)).setIntent(new Intent(this.context, this.startupActivity).setAction(RocketAction.ACTION_PHONE)).build()));
        }
    }

    public final void createFriendShortcuts(ArrayList<Contact> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "transfers");
        if (arrayList.size() != 0) {
            if (this.startupActivity != null) {
                CropCircleTransformation cropCircleTransformation = new CropCircleTransformation(this.context);
                if (VERSION.SDK_INT >= 25) {
                    boolean z;
                    Bitmap bitmap;
                    Context context;
                    StringBuilder stringBuilder;
                    Builder builder;
                    StringBuilder stringBuilder2;
                    Collection arrayList2;
                    ShortcutInfo shortcutInfo;
                    String id;
                    ShortcutManager shortcutManager;
                    List dynamicShortcuts;
                    List arrayList3 = new ArrayList();
                    Contact contact = (Contact) arrayList.get(0);
                    Intent action = new Intent(this.context, this.startupActivity).setAction(RocketAction.ACTION_FRIEND);
                    Intrinsics.checkExpressionValueIsNotNull(action, "intent");
                    Intrinsics.checkExpressionValueIsNotNull(contact, "contact");
                    Intrinsics.checkParameterIsNotNull(action, "intent");
                    Intrinsics.checkParameterIsNotNull(contact, "contact");
                    action.putExtra("id", contact.getId());
                    action.putExtra("avatar", contact.getAvatar());
                    action.putExtra("serverFirstName", contact.getServerFirstName());
                    action.putExtra("serverLastName", contact.getServerLastName());
                    action.putExtra("firstName", contact.getFirstName());
                    action.putExtra("lastName", contact.getLastName());
                    action.putExtra("isRocket", contact.isRocket());
                    CharSequence avatar = contact.getAvatar();
                    if (avatar != null) {
                        if (!StringsKt__StringsJVMKt.isBlank(avatar)) {
                            z = false;
                            if (z) {
                                bitmap = (Bitmap) Glide.with(this.context).load(contact.getAvatar()).asBitmap().transform(cropCircleTransformation).into(300, 300).get();
                            } else {
                                bitmap = (Bitmap) Glide.with(this.context).load(Integer.valueOf(C0859R.drawable.ava_default_unisex)).asBitmap().transform(cropCircleTransformation).into(300, 300).get();
                            }
                            context = this.context;
                            stringBuilder = new StringBuilder("friend_");
                            stringBuilder.append(contact.getId());
                            builder = new Builder(context, stringBuilder.toString());
                            stringBuilder2 = new StringBuilder();
                            stringBuilder2.append(contact.getFirstName());
                            stringBuilder2.append(' ');
                            stringBuilder2.append(contact.getLastName());
                            builder = builder.setShortLabel(stringBuilder2.toString());
                            stringBuilder2 = new StringBuilder();
                            stringBuilder2.append(contact.getFirstName());
                            stringBuilder2.append(' ');
                            stringBuilder2.append(contact.getLastName());
                            arrayList = builder.setLongLabel(stringBuilder2.toString()).setIcon(Icon.createWithBitmap(bitmap)).setIntent(action).build();
                            Intrinsics.checkExpressionValueIsNotNull(arrayList, "ShortcutInfo.Builder(con…setIntent(intent).build()");
                            arrayList3.add(arrayList);
                            arrayList = this.shortcutManager;
                            if (arrayList != null) {
                                arrayList = arrayList.getDynamicShortcuts();
                                if (arrayList != null) {
                                    arrayList2 = new ArrayList();
                                    for (Object next : arrayList) {
                                        shortcutInfo = (ShortcutInfo) next;
                                        Intrinsics.checkExpressionValueIsNotNull(shortcutInfo, "it");
                                        id = shortcutInfo.getId();
                                        Intrinsics.checkExpressionValueIsNotNull(id, "it.id");
                                        if (StringsKt__StringsJVMKt.startsWith$default(id, "friend_", false, 2, null)) {
                                            arrayList2.add(next);
                                        }
                                    }
                                    for (ShortcutInfo shortcutInfo2 : (List) arrayList2) {
                                        shortcutManager = this.shortcutManager;
                                        if (shortcutManager != null) {
                                            dynamicShortcuts = shortcutManager.getDynamicShortcuts();
                                            if (dynamicShortcuts != null) {
                                                dynamicShortcuts.remove(shortcutInfo2);
                                            }
                                        }
                                    }
                                }
                            }
                            addShortcuts(arrayList3);
                        }
                    }
                    z = true;
                    if (z) {
                        bitmap = (Bitmap) Glide.with(this.context).load(Integer.valueOf(C0859R.drawable.ava_default_unisex)).asBitmap().transform(cropCircleTransformation).into(300, 300).get();
                    } else {
                        bitmap = (Bitmap) Glide.with(this.context).load(contact.getAvatar()).asBitmap().transform(cropCircleTransformation).into(300, 300).get();
                    }
                    context = this.context;
                    stringBuilder = new StringBuilder("friend_");
                    stringBuilder.append(contact.getId());
                    builder = new Builder(context, stringBuilder.toString());
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(contact.getFirstName());
                    stringBuilder2.append(' ');
                    stringBuilder2.append(contact.getLastName());
                    builder = builder.setShortLabel(stringBuilder2.toString());
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(contact.getFirstName());
                    stringBuilder2.append(' ');
                    stringBuilder2.append(contact.getLastName());
                    arrayList = builder.setLongLabel(stringBuilder2.toString()).setIcon(Icon.createWithBitmap(bitmap)).setIntent(action).build();
                    Intrinsics.checkExpressionValueIsNotNull(arrayList, "ShortcutInfo.Builder(con…setIntent(intent).build()");
                    arrayList3.add(arrayList);
                    arrayList = this.shortcutManager;
                    if (arrayList != null) {
                        arrayList = arrayList.getDynamicShortcuts();
                        if (arrayList != null) {
                            arrayList2 = new ArrayList();
                            for (Object next2 : arrayList) {
                                shortcutInfo = (ShortcutInfo) next2;
                                Intrinsics.checkExpressionValueIsNotNull(shortcutInfo, "it");
                                id = shortcutInfo.getId();
                                Intrinsics.checkExpressionValueIsNotNull(id, "it.id");
                                if (StringsKt__StringsJVMKt.startsWith$default(id, "friend_", false, 2, null)) {
                                    arrayList2.add(next2);
                                }
                            }
                            for (ShortcutInfo shortcutInfo22 : (List) arrayList2) {
                                shortcutManager = this.shortcutManager;
                                if (shortcutManager != null) {
                                    dynamicShortcuts = shortcutManager.getDynamicShortcuts();
                                    if (dynamicShortcuts != null) {
                                        dynamicShortcuts.remove(shortcutInfo22);
                                    }
                                }
                            }
                        }
                    }
                    addShortcuts(arrayList3);
                }
            }
        }
    }

    private final void addShortcuts(List<ShortcutInfo> list) {
        if (VERSION.SDK_INT >= 25) {
            try {
                int size;
                ShortcutManager shortcutManager;
                List manifestShortcuts;
                int size2;
                ShortcutManager shortcutManager2 = this.shortcutManager;
                int i = 0;
                if (shortcutManager2 != null) {
                    List dynamicShortcuts = shortcutManager2.getDynamicShortcuts();
                    if (dynamicShortcuts != null) {
                        size = dynamicShortcuts.size();
                        shortcutManager = this.shortcutManager;
                        if (shortcutManager != null) {
                            manifestShortcuts = shortcutManager.getManifestShortcuts();
                            if (manifestShortcuts != null) {
                                size2 = manifestShortcuts.size();
                                size += size2;
                                shortcutManager = this.shortcutManager;
                                if (shortcutManager != null) {
                                    i = shortcutManager.getMaxShortcutCountPerActivity();
                                }
                                if (size < i) {
                                    shortcutManager2 = this.shortcutManager;
                                    if (shortcutManager2 != null) {
                                        shortcutManager2.addDynamicShortcuts(list);
                                    }
                                }
                            }
                        }
                        size2 = 0;
                        size += size2;
                        shortcutManager = this.shortcutManager;
                        if (shortcutManager != null) {
                            i = shortcutManager.getMaxShortcutCountPerActivity();
                        }
                        if (size < i) {
                            shortcutManager2 = this.shortcutManager;
                            if (shortcutManager2 != null) {
                                shortcutManager2.addDynamicShortcuts(list);
                            }
                        }
                    }
                }
                size = 0;
                shortcutManager = this.shortcutManager;
                if (shortcutManager != null) {
                    manifestShortcuts = shortcutManager.getManifestShortcuts();
                    if (manifestShortcuts != null) {
                        size2 = manifestShortcuts.size();
                        size += size2;
                        shortcutManager = this.shortcutManager;
                        if (shortcutManager != null) {
                            i = shortcutManager.getMaxShortcutCountPerActivity();
                        }
                        if (size < i) {
                            shortcutManager2 = this.shortcutManager;
                            if (shortcutManager2 != null) {
                                shortcutManager2.addDynamicShortcuts(list);
                            }
                        }
                    }
                }
                size2 = 0;
                size += size2;
                shortcutManager = this.shortcutManager;
                if (shortcutManager != null) {
                    i = shortcutManager.getMaxShortcutCountPerActivity();
                }
                if (size < i) {
                    shortcutManager2 = this.shortcutManager;
                    if (shortcutManager2 != null) {
                        shortcutManager2.addDynamicShortcuts(list);
                    }
                }
            } catch (List<ShortcutInfo> list2) {
                AnalyticsManager.logException(list2);
            }
        }
    }

    public static Contact readContact(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "intent");
        Contact contact = new Contact();
        contact.setId(bundle.getLong("id", 0));
        contact.setAvatar(bundle.getString("avatar"));
        contact.setServerFirstName(bundle.getString("serverFirstName"));
        contact.setServerLastName(bundle.getString("serverLastName"));
        contact.setFirstName(bundle.getString("firstName"));
        contact.setLastName(bundle.getString("lastName"));
        contact.setRocket(bundle.getBoolean("isRocket", true));
        return contact;
    }
}
