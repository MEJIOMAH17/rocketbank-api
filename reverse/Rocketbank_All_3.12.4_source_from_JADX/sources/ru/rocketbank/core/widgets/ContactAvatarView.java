package ru.rocketbank.core.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import ru.rocketbank.core.C1328R;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.r2d2.C0859R;

public class ContactAvatarView extends FrameLayout {
    private ImageView background;
    private ImageView image;
    private TextView text;

    public ContactAvatarView(Context context) {
        super(context);
        init();
    }

    public ContactAvatarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
        applyAttributes(attributeSet);
    }

    public ContactAvatarView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
        applyAttributes(attributeSet);
    }

    private void init() {
        inflate(getContext(), C0859R.layout.widget_contact_avatar_view, this);
        this.background = (ImageView) findViewById(C0859R.id.background);
        this.image = (ImageView) findViewById(C0859R.id.image);
        this.text = (TextView) findViewById(C0859R.id.text);
    }

    private void applyAttributes(AttributeSet attributeSet) {
        if (!isInEditMode()) {
            attributeSet = getContext().getTheme().obtainStyledAttributes(attributeSet, C1328R.styleable.ContactAvatarView, 0, 0);
            try {
                int dimensionPixelSize = attributeSet.getDimensionPixelSize(C1328R.styleable.ContactAvatarView_textSize, -1);
                if (dimensionPixelSize != -1) {
                    this.text.setTextSize(0, (float) dimensionPixelSize);
                }
                attributeSet.recycle();
            } catch (Throwable th) {
                attributeSet.recycle();
            }
        }
    }

    public final void setContact(String str, String str2, String str3) {
        setName(str, str2);
        ImageHelper.INSTANCE.load(this.image, str3, (int) C0859R.color.transparent);
    }

    public final void setContact(Contact contact) {
        setName(contact.getFirstName(), contact.getLastName());
        Context context = this.image.getContext();
        String avatar = contact.getAvatar();
        if (avatar != null) {
            Glide.with(context).load(avatar).error((int) C0859R.color.transparent).centerCrop().into(this.image);
        } else {
            Glide.with(context).load(Integer.valueOf(C0859R.color.transparent)).into(this.image);
        }
    }

    private void setName(String str, String str2) {
        Bitmap createBitmap = Bitmap.createBitmap(2, 2, Config.ARGB_8888);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(str2);
        createBitmap.eraseColor(colorFromString(stringBuilder.toString()));
        this.background.setImageBitmap(createBitmap);
        String str3 = "";
        if (!TextUtils.isEmpty(str)) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(str3);
            stringBuilder.append(str.substring(0, 1));
            str3 = stringBuilder.toString();
        }
        if (TextUtils.isEmpty(str2) == null) {
            str = new StringBuilder();
            str.append(str3);
            str.append(str2.substring(0, 1));
            str3 = str.toString();
        }
        this.text.setText(str3.toUpperCase());
    }

    private static int colorFromString(String str) {
        if (TextUtils.isEmpty(str)) {
            return -7829368;
        }
        switch (Math.abs(str.hashCode()) % 14) {
            case null:
                return Color.parseColor("#ed5564");
            case 1:
                return Color.parseColor("#fb6e52");
            case 2:
                return Color.parseColor("#ffce55");
            case 3:
                return Color.parseColor("#a0d468");
            case 4:
                return Color.parseColor("#48cfae");
            case 5:
                return Color.parseColor("#4fc0e8");
            case 6:
                return Color.parseColor("#5d9cec");
            case 7:
                return Color.parseColor("#ac92ed");
            case 8:
                return Color.parseColor("#ec87bf");
            case 9:
                return Color.parseColor("#ccd0d9");
            case 10:
                return Color.parseColor("#656d78");
            default:
                return -7829368;
        }
    }
}
