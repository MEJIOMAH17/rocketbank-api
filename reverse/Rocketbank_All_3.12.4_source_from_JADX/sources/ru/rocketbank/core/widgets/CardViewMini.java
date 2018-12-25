package ru.rocketbank.core.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build.VERSION;
import android.support.v7.widget.CardView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.DrawableTypeRequest;
import com.bumptech.glide.Glide;
import java.util.Arrays;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import ru.rocketbank.core.model.CardModel;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: CardViewMini.kt */
public final class CardViewMini extends FrameLayout {
    private CardActionsListener cardActionsListener;
    private CardView cardView;
    private ImageView imageViewBackground;

    /* compiled from: CardViewMini.kt */
    public interface CardActionsListener {
        void onActionRequested(CardModel cardModel, View view);
    }

    public CardViewMini(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
        View.inflate(getContext(), C0859R.layout.list_item_cardview_mini, this);
        context = findViewById(C0859R.id.cardView);
        Intrinsics.checkExpressionValueIsNotNull(context, "findViewById(R.id.cardView)");
        this.cardView = (CardView) context;
        context = findViewById(C0859R.id.imageViewBackground);
        Intrinsics.checkExpressionValueIsNotNull(context, "findViewById(R.id.imageViewBackground)");
        this.imageViewBackground = (ImageView) context;
    }

    public final void setCard(CardModel cardModel) {
        boolean z;
        RoundCornersDrawable roundCornersDrawable;
        ImageView imageView;
        ImageHelper imageHelper;
        String logo;
        TextView textView;
        TextView textView2;
        StringCompanionObject stringCompanionObject;
        String str;
        Object[] objArr;
        String pan;
        String substring;
        Intrinsics.checkParameterIsNotNull(cardModel, "cardModel");
        String image = cardModel.getImage();
        CharSequence charSequence = image;
        if (charSequence != null) {
            if (charSequence.length() != 0) {
                z = false;
                if (z) {
                    setImageUrl(image);
                } else {
                    ImageView imageView2;
                    CardView cardView;
                    ImageView imageView3;
                    Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), C0859R.drawable.userfeed_refill_card_card_bg);
                    Intrinsics.checkExpressionValueIsNotNull(decodeResource, "bitmap");
                    float dimension = getResources().getDimension(C0859R.dimen.list_item_mini_card_corner_radius);
                    imageView2 = this.imageViewBackground;
                    if (imageView2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("imageViewBackground");
                    }
                    imageView2.getWidth();
                    imageView2 = this.imageViewBackground;
                    if (imageView2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("imageViewBackground");
                    }
                    imageView2.getHeight();
                    roundCornersDrawable = new RoundCornersDrawable(decodeResource, dimension);
                    cardView = this.cardView;
                    if (cardView == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("cardView");
                    }
                    cardView.setPreventCornerOverlap(false);
                    if (VERSION.SDK_INT < 16) {
                        imageView = this.imageViewBackground;
                        if (imageView == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("imageViewBackground");
                        }
                        imageView.setImageDrawable(roundCornersDrawable);
                    } else {
                        imageView = this.imageViewBackground;
                        if (imageView == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("imageViewBackground");
                        }
                        imageView.setBackgroundDrawable(roundCornersDrawable);
                    }
                    DrawableTypeRequest load = Glide.with(getContext()).load(Integer.valueOf(C0859R.drawable.userfeed_refill_card_card_bg));
                    imageView3 = this.imageViewBackground;
                    if (imageView3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("imageViewBackground");
                    }
                    load.into(imageView3);
                }
                imageView = (ImageView) findViewById(C0859R.id.logo);
                charSequence = cardModel.getLogo();
                if (charSequence != null) {
                    if (charSequence.length() == 0) {
                        z = false;
                        if (!z) {
                            imageHelper = ImageHelper.INSTANCE;
                            Intrinsics.checkExpressionValueIsNotNull(imageView, "logo");
                            logo = cardModel.getLogo();
                            if (logo == null) {
                                Intrinsics.throwNpe();
                            }
                            imageHelper.loadNoPlaceholder(imageView, logo);
                        }
                        textView = (TextView) findViewById(C0859R.id.number);
                        textView2 = (TextView) findViewById(C0859R.id.name);
                        Intrinsics.checkExpressionValueIsNotNull(textView2, "name");
                        textView2.setText(cardModel.getTitle());
                        Intrinsics.checkExpressionValueIsNotNull(textView, "number");
                        stringCompanionObject = StringCompanionObject.INSTANCE;
                        str = "%s";
                        objArr = new Object[1];
                        pan = cardModel.getPan();
                        if (pan == null) {
                            Intrinsics.throwNpe();
                        }
                        if (pan != null) {
                            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                        }
                        substring = pan.substring(12, 16);
                        Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        objArr[0] = substring;
                        str = String.format(str, Arrays.copyOf(objArr, 1));
                        Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(format, *args)");
                        textView.setText(str);
                        findViewById(C0859R.id.hide).setOnClickListener(new CardViewMini$setCard$1(this, cardModel));
                        return;
                    }
                }
                z = true;
                if (z) {
                    imageHelper = ImageHelper.INSTANCE;
                    Intrinsics.checkExpressionValueIsNotNull(imageView, "logo");
                    logo = cardModel.getLogo();
                    if (logo == null) {
                        Intrinsics.throwNpe();
                    }
                    imageHelper.loadNoPlaceholder(imageView, logo);
                }
                textView = (TextView) findViewById(C0859R.id.number);
                textView2 = (TextView) findViewById(C0859R.id.name);
                Intrinsics.checkExpressionValueIsNotNull(textView2, "name");
                textView2.setText(cardModel.getTitle());
                Intrinsics.checkExpressionValueIsNotNull(textView, "number");
                stringCompanionObject = StringCompanionObject.INSTANCE;
                str = "%s";
                objArr = new Object[1];
                pan = cardModel.getPan();
                if (pan == null) {
                    Intrinsics.throwNpe();
                }
                if (pan != null) {
                    substring = pan.substring(12, 16);
                    Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    objArr[0] = substring;
                    str = String.format(str, Arrays.copyOf(objArr, 1));
                    Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(format, *args)");
                    textView.setText(str);
                    findViewById(C0859R.id.hide).setOnClickListener(new CardViewMini$setCard$1(this, cardModel));
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
        }
        z = true;
        if (z) {
            Bitmap decodeResource2 = BitmapFactory.decodeResource(getResources(), C0859R.drawable.userfeed_refill_card_card_bg);
            Intrinsics.checkExpressionValueIsNotNull(decodeResource2, "bitmap");
            float dimension2 = getResources().getDimension(C0859R.dimen.list_item_mini_card_corner_radius);
            imageView2 = this.imageViewBackground;
            if (imageView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("imageViewBackground");
            }
            imageView2.getWidth();
            imageView2 = this.imageViewBackground;
            if (imageView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("imageViewBackground");
            }
            imageView2.getHeight();
            roundCornersDrawable = new RoundCornersDrawable(decodeResource2, dimension2);
            cardView = this.cardView;
            if (cardView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cardView");
            }
            cardView.setPreventCornerOverlap(false);
            if (VERSION.SDK_INT < 16) {
                imageView = this.imageViewBackground;
                if (imageView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("imageViewBackground");
                }
                imageView.setBackgroundDrawable(roundCornersDrawable);
            } else {
                imageView = this.imageViewBackground;
                if (imageView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("imageViewBackground");
                }
                imageView.setImageDrawable(roundCornersDrawable);
            }
            DrawableTypeRequest load2 = Glide.with(getContext()).load(Integer.valueOf(C0859R.drawable.userfeed_refill_card_card_bg));
            imageView3 = this.imageViewBackground;
            if (imageView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("imageViewBackground");
            }
            load2.into(imageView3);
        } else {
            setImageUrl(image);
        }
        imageView = (ImageView) findViewById(C0859R.id.logo);
        charSequence = cardModel.getLogo();
        if (charSequence != null) {
            if (charSequence.length() == 0) {
                z = false;
                if (z) {
                    imageHelper = ImageHelper.INSTANCE;
                    Intrinsics.checkExpressionValueIsNotNull(imageView, "logo");
                    logo = cardModel.getLogo();
                    if (logo == null) {
                        Intrinsics.throwNpe();
                    }
                    imageHelper.loadNoPlaceholder(imageView, logo);
                }
                textView = (TextView) findViewById(C0859R.id.number);
                textView2 = (TextView) findViewById(C0859R.id.name);
                Intrinsics.checkExpressionValueIsNotNull(textView2, "name");
                textView2.setText(cardModel.getTitle());
                Intrinsics.checkExpressionValueIsNotNull(textView, "number");
                stringCompanionObject = StringCompanionObject.INSTANCE;
                str = "%s";
                objArr = new Object[1];
                pan = cardModel.getPan();
                if (pan == null) {
                    Intrinsics.throwNpe();
                }
                if (pan != null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                substring = pan.substring(12, 16);
                Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                objArr[0] = substring;
                str = String.format(str, Arrays.copyOf(objArr, 1));
                Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(format, *args)");
                textView.setText(str);
                findViewById(C0859R.id.hide).setOnClickListener(new CardViewMini$setCard$1(this, cardModel));
                return;
            }
        }
        z = true;
        if (z) {
            imageHelper = ImageHelper.INSTANCE;
            Intrinsics.checkExpressionValueIsNotNull(imageView, "logo");
            logo = cardModel.getLogo();
            if (logo == null) {
                Intrinsics.throwNpe();
            }
            imageHelper.loadNoPlaceholder(imageView, logo);
        }
        textView = (TextView) findViewById(C0859R.id.number);
        textView2 = (TextView) findViewById(C0859R.id.name);
        Intrinsics.checkExpressionValueIsNotNull(textView2, "name");
        textView2.setText(cardModel.getTitle());
        Intrinsics.checkExpressionValueIsNotNull(textView, "number");
        stringCompanionObject = StringCompanionObject.INSTANCE;
        str = "%s";
        objArr = new Object[1];
        pan = cardModel.getPan();
        if (pan == null) {
            Intrinsics.throwNpe();
        }
        if (pan != null) {
            substring = pan.substring(12, 16);
            Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            objArr[0] = substring;
            str = String.format(str, Arrays.copyOf(objArr, 1));
            Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(format, *args)");
            textView.setText(str);
            findViewById(C0859R.id.hide).setOnClickListener(new CardViewMini$setCard$1(this, cardModel));
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    public final void setImageUrl(String str) {
        Object obj;
        ImageView imageView;
        CharSequence charSequence = str;
        if (charSequence != null) {
            if (charSequence.length() != 0) {
                obj = null;
                if (obj == null) {
                    str = Glide.with(getContext()).load(str);
                    imageView = this.imageViewBackground;
                    if (imageView == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("imageViewBackground");
                    }
                    str.into(imageView);
                }
            }
        }
        obj = 1;
        if (obj == null) {
            str = Glide.with(getContext()).load(str);
            imageView = this.imageViewBackground;
            if (imageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("imageViewBackground");
            }
            str.into(imageView);
        }
    }

    public final void setCardActionsListener(CardActionsListener cardActionsListener) {
        Intrinsics.checkParameterIsNotNull(cardActionsListener, "cardActionsListener");
        this.cardActionsListener = cardActionsListener;
    }

    public final void resetImage() {
        ImageView imageView = this.imageViewBackground;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageViewBackground");
        }
        imageView.setImageDrawable(null);
    }
}
