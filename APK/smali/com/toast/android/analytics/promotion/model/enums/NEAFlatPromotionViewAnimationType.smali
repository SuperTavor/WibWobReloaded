.class public final enum Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

.field public static final enum ANIMATION_FADE:Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

.field public static final enum ANIMATION_NONE:Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

.field public static final enum ANIMATION_SLIDE:Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;


# instance fields
.field mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    const-string v1, "ANIMATION_NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->ANIMATION_NONE:Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    new-instance v0, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    const-string v1, "ANIMATION_SLIDE"

    invoke-direct {v0, v1, v3, v3}, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->ANIMATION_SLIDE:Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    new-instance v0, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    const-string v1, "ANIMATION_FADE"

    invoke-direct {v0, v1, v4, v4}, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->ANIMATION_FADE:Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    sget-object v1, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->ANIMATION_NONE:Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->ANIMATION_SLIDE:Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->ANIMATION_FADE:Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->$VALUES:[Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->mType:I

    return-void
.end method

.method public static valueOf(I)Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->ANIMATION_NONE:Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->ANIMATION_SLIDE:Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->ANIMATION_FADE:Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;
    .locals 1

    const-class v0, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    return-object v0
.end method

.method public static values()[Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->$VALUES:[Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    invoke-virtual {v0}, [Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->mType:I

    return v0
.end method
