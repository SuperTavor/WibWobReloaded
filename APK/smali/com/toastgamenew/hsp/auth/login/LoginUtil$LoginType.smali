.class public final enum Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

.field public static final enum LOGIN:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

.field public static final enum MAPPING:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

.field public static final enum OVERWRITE_MAPPING:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v4, v2}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->LOGIN:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    new-instance v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    const-string v1, "MAPPING"

    invoke-direct {v0, v1, v2, v3}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->MAPPING:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    new-instance v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    const-string v1, "OVERWRITE_MAPPING"

    invoke-direct {v0, v1, v3, v5}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->OVERWRITE_MAPPING:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    new-array v0, v5, [Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->LOGIN:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->MAPPING:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->OVERWRITE_MAPPING:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->$VALUES:[Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->mValue:I

    return-void
.end method

.method public static getLoginTypeByNum(I)Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->LOGIN:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->MAPPING:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->OVERWRITE_MAPPING:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;
    .locals 1

    const-class v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    return-object v0
.end method

.method public static values()[Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;
    .locals 1

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->$VALUES:[Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    invoke-virtual {v0}, [Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->mValue:I

    return v0
.end method
