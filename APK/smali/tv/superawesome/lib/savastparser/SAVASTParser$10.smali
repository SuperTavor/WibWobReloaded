.class synthetic Ltv/superawesome/lib/savastparser/SAVASTParser$10;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $SwitchMap$tv$superawesome$lib$samodelspace$vastad$SAVASTAdType:[I

.field static final synthetic $SwitchMap$tv$superawesome$lib$sautils$SAUtils$SAConnectionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->values()[Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/superawesome/lib/savastparser/SAVASTParser$10;->$SwitchMap$tv$superawesome$lib$samodelspace$vastad$SAVASTAdType:[I

    :try_start_0
    sget-object v0, Ltv/superawesome/lib/savastparser/SAVASTParser$10;->$SwitchMap$tv$superawesome$lib$samodelspace$vastad$SAVASTAdType:[I

    sget-object v1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->Invalid:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    invoke-virtual {v1}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v0, Ltv/superawesome/lib/savastparser/SAVASTParser$10;->$SwitchMap$tv$superawesome$lib$samodelspace$vastad$SAVASTAdType:[I

    sget-object v1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->InLine:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    invoke-virtual {v1}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v0, Ltv/superawesome/lib/savastparser/SAVASTParser$10;->$SwitchMap$tv$superawesome$lib$samodelspace$vastad$SAVASTAdType:[I

    sget-object v1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->Wrapper:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    invoke-virtual {v1}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    invoke-static {}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->values()[Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/superawesome/lib/savastparser/SAVASTParser$10;->$SwitchMap$tv$superawesome$lib$sautils$SAUtils$SAConnectionType:[I

    :try_start_3
    sget-object v0, Ltv/superawesome/lib/savastparser/SAVASTParser$10;->$SwitchMap$tv$superawesome$lib$sautils$SAUtils$SAConnectionType:[I

    sget-object v1, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->cellular_unknown:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    invoke-virtual {v1}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v0, Ltv/superawesome/lib/savastparser/SAVASTParser$10;->$SwitchMap$tv$superawesome$lib$sautils$SAUtils$SAConnectionType:[I

    sget-object v1, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->cellular_2g:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    invoke-virtual {v1}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v0, Ltv/superawesome/lib/savastparser/SAVASTParser$10;->$SwitchMap$tv$superawesome$lib$sautils$SAUtils$SAConnectionType:[I

    sget-object v1, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->cellular_3g:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    invoke-virtual {v1}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v0, Ltv/superawesome/lib/savastparser/SAVASTParser$10;->$SwitchMap$tv$superawesome$lib$sautils$SAUtils$SAConnectionType:[I

    sget-object v1, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->unknown:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    invoke-virtual {v1}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v0, Ltv/superawesome/lib/savastparser/SAVASTParser$10;->$SwitchMap$tv$superawesome$lib$sautils$SAUtils$SAConnectionType:[I

    sget-object v1, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->ethernet:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    invoke-virtual {v1}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v0, Ltv/superawesome/lib/savastparser/SAVASTParser$10;->$SwitchMap$tv$superawesome$lib$sautils$SAUtils$SAConnectionType:[I

    sget-object v1, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->wifi:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    invoke-virtual {v1}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v0, Ltv/superawesome/lib/savastparser/SAVASTParser$10;->$SwitchMap$tv$superawesome$lib$sautils$SAUtils$SAConnectionType:[I

    sget-object v1, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->cellular_4g:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    invoke-virtual {v1}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    return-void

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_0
.end method
